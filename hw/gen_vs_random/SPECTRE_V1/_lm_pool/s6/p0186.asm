.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
sbb sil, bl
mov bl, cl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
cmovnz rcx, rbx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
