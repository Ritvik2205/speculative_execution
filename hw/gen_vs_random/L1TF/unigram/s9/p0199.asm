.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 45
lea edi, qword ptr [rsi + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
test sil, 29
and cl, cl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
or dil, -113
add dil, bl
or rax, -443578116
sbb al, -14
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 42
or cl, 105
setbe cl
lea rax, qword ptr [rax + rdi]
test eax, ecx
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
