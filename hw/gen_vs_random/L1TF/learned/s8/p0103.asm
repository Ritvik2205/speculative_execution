.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
and al, -68
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and al, dil
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and si, 25
jmp .bb_0.2
.bb_0.2:
or al, cl
or rdi, 15
cmp dl, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
