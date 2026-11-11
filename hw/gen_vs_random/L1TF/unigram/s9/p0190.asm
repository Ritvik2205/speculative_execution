.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb si, ax
add bl, 37 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 74
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add ebx, 2
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
or rdi, rdx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
test al, dl
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdi + rax + 71]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and sil, 93
test esi, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
