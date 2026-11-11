.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, dx
mul dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
bswap rcx
sub bx, 33
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
test esi, 24
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 25
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
add ax, bx
add cx, 59
lea eax, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
add cl, -34 # instrumentation
setl dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
