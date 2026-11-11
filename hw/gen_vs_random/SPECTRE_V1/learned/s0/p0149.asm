.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
cmovno dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
test bl, -8
mov bl, al
sub cl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
xor al, cl
and bl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
