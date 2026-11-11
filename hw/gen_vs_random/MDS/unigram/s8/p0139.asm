.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, al
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
cmovnl di, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
cmovo rdi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
and bl, -28 # instrumentation
cmovl rax, rcx
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 95
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
test eax, 298249463
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
btr si, 52
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
or eax, -927349615
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
