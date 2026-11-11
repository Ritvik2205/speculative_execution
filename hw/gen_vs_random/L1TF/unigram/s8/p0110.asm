.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
xor al, bl
xchg cl, dl
imul bl
dec edi
cmp edx, 99
jmp .bb_0.1
.bb_0.1:
btr edx, 7
setz al
xor al, dil
test cx, dx
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
add al, 78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
lea edi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
