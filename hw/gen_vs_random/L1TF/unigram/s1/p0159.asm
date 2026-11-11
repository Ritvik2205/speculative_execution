.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
cmovnb rdi, rdi
sbb di, 25
sbb bl, sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
test sil, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ebx
lea rdi, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 83
cmovs rdx, rsi
xor dil, dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
add dl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
