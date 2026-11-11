.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ebx, ebx, 100
test dl, dl
add dil, 88
sbb cl, -11
cmovnp eax, edi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 31
bts edx, 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
sbb dl, -26
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
