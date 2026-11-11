.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 73
cmovnz edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
bt bx, 253
btr dx, cx
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
xor dl, 40
bt eax, 28
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and bl, -123 # instrumentation
cmovnp dx, si
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
btc eax, 40
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and sil, -56
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
bt ax, dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test rax, -2052112368
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
or cx, 39
and ecx, edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
