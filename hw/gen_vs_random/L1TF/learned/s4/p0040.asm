.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
bswap rax
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
sbb ax, -26133
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
mov dil, 4
sbb rax, -1477844571
lea si, qword ptr [rax]
lea edi, qword ptr [rdx + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
mov bx, 74
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
