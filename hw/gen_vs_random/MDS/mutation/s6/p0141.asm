.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
bt eax, 28
btr dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and bl, -123 # instrumentation
cmovnp dx, si
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
bt ax, dx
bt bx, 253
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test cl, 73
cmovnz edi, ecx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor dl, -59
and sil, 74
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
