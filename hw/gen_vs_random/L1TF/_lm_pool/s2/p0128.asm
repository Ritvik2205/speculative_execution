.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
jmp .bb_0.1
.bb_0.1:
test rsi, rdi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 4
and ax, 26813
and rbx, -88
not bl
adc dl, -12
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
