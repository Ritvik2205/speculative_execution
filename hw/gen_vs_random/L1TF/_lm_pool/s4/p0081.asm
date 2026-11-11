.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
btc cx, dx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
add dil, dl
sub al, -47
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
adc bl, dil
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
cmovle rax, rsi
or cl, 105
lea rax, qword ptr [rdi]
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
