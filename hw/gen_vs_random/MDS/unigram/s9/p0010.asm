.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, ax
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdi], di
or al, al
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
cmovnl rdi, rsi
test si, 56
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
cmovns bx, cx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovz ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
