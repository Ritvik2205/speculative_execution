.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
nop
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
add al, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
add bl, -95 # instrumentation
lea bx, qword ptr [rcx + rcx + 34]
xor rax, rsi
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
movzx ecx, bx
movzx eax, dx
add sil, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
add bl, -114 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
cmovnz cx, bx
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
