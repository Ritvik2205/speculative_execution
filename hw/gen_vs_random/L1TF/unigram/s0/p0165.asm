.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
cmovp si, cx
setnb al
and dx, bx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
dec bx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
movzx ebx, si
xchg dl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
cmp ecx, 86
cmovnp dx, cx
add al, -79 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
add cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
