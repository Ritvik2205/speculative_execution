.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
bt bx, 253
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and bl, -123 # instrumentation
cmovnp dx, si
bt eax, 37
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
cmovnz edi, ecx
btr dx, cx
bt ax, dx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and sil, -9
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
btc eax, 40
test cl, -123
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
