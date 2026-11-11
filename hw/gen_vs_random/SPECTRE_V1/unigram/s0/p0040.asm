.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
mul cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
or dil, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 33
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 37
add cl, 107 # instrumentation
lea ebx, qword ptr [rsi + rcx]
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
or rax, -1571963467
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
setnb sil
cmovle rdx, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
