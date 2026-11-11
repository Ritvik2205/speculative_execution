.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
test al, 34
lea bx, qword ptr [rcx + rdx + 62]
sub bl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
cmp ecx, 8
adc dl, 48
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
