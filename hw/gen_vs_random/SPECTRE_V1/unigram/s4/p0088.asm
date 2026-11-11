.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 57
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 10
cmovnbe ecx, esi
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 53
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
xor rax, rdx
and cl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
lea rax, qword ptr [rsi + rcx]
cmovle ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
sbb rax, 342397759
bt edx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
