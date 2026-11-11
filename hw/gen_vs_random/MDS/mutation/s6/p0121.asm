.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and sil, 74
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
btc eax, 40
bt eax, 151
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and bl, -123 # instrumentation
cmovnp dx, si
test cl, -18
bt ax, dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
cmovnz edi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
bt bx, 253
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
btr dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
