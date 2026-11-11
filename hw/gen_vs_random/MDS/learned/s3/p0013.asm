.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
test al, 127
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
jmp .bb_0.1
.bb_0.1:
and ebx, 20
or rax, 1020005579
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 53
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
or rax, 1461812833
or dil, bl
xor dil, al
test cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
