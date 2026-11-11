.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
movzx di, al
movsx rdx, cx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -114 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
lea rcx, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
mov cl, cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
cdq
xor al, 78
imul rdi, rcx, 90
lea bx, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
