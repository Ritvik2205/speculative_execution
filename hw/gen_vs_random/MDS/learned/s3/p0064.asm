.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 88
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or al, sil
test cl, dil
or rax, 1461812833
xor al, 34
or cl, 39
and rbx, 65
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
