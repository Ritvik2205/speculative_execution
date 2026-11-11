.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
test cl, -18
bt bx, 253
xor dl, -19
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
bt ax, dx
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
btc eax, 40
btr dx, cx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and sil, -69
and bl, -123 # instrumentation
cmovnp dx, si
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
bt eax, 37
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
