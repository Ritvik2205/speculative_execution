.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
add al, -44
cmp rdx, -49
sbb dil, 81
cmp al, 98
add sil, 3
and ax, 4
sub rax, -1680844889
adc cl, al
sbb cl, 45
cmovbe ax, cx
add bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
