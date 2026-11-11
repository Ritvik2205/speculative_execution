.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 64
or cl, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or rbx, -77
cmovp ax, si
xor dil, -3
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
test dil, -80
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
btr ebx, esi
cmovnbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
test cl, cl
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rax, -1931765367
cmovl cx, dx
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
