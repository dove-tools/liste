package cmd

import (
	"fmt"
	"os"
	"strings"

	"github.com/charmbracelet/lipgloss"
	"github.com/mattn/go-isatty"
)

var logoLines = []string{
	`  ██╗     ██╗███████╗████████╗███████╗`,
	`  ██║     ██║██╔════╝╚══██╔══╝██╔════╝`,
	`  ██║     ██║███████╗   ██║   █████╗  `,
	`  ██║     ██║╚════██║   ██║   ██╔══╝  `,
	`  ███████╗██║███████║   ██║   ███████╗`,
	`  ╚══════╝╚═╝╚══════╝   ╚═╝   ╚══════╝`,
}

func printBanner(version string) {
	if !isatty.IsTerminal(os.Stdout.Fd()) {
		return
	}

	logoStyle := lipgloss.NewStyle().Foreground(lipgloss.Color("63"))
	titleStyle := lipgloss.NewStyle().Bold(true).Foreground(lipgloss.Color("141"))
	dimStyle := lipgloss.NewStyle().Faint(true)
	accentStyle := lipgloss.NewStyle().Foreground(lipgloss.Color("141"))

	v := version
	if v == "" {
		v = "dev"
	}

	infoLines := []string{
		titleStyle.Render("liste") + "  " + dimStyle.Render(v),
		dimStyle.Render("──────────────────────────────"),
		dimStyle.Render("tasks · in markdown"),
		"",
		accentStyle.Render("○") + dimStyle.Render(" planned  ") +
			accentStyle.Render("●") + dimStyle.Render(" active  ") +
			accentStyle.Render("✓") + dimStyle.Render(" done"),
		"",
		dimStyle.Render("github.com/mull-sys/liste"),
	}

	left := logoStyle.Render(strings.Join(logoLines, "\n"))
	right := lipgloss.NewStyle().PaddingLeft(4).Render(strings.Join(infoLines, "\n"))

	fmt.Fprintln(os.Stdout)
	fmt.Fprintln(os.Stdout, lipgloss.JoinHorizontal(lipgloss.Top, left, right))
	fmt.Fprintln(os.Stdout)
}
