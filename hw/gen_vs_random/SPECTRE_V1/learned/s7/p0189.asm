.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
jle .bb_0.1
jmp .exit_0
.bb_0.1:
setno bl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
or sil, 34
test dl, -36
lea bx, qword ptr [rcx + rdx + 46]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmp rax, 1189904463
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
btc eax, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
