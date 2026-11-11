.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -18
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
xor dl, 8
btr dx, cx
and bl, -123 # instrumentation
cmovnp dx, si
bt bx, 253
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
bt ax, dx
and sil, -69
bt eax, 117
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmovnz edi, ecx
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
