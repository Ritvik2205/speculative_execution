.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 85
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
jmp .bb_0.1
.bb_0.1:
xor di, 88
or al, dil
or dil, -113
or rdx, 11
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
