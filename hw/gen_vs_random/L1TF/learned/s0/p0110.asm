.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
mov bl, al
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
test eax, 899472326
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
