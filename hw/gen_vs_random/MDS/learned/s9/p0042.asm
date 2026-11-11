.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or al, bl
btr dx, si
test al, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and dl, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
