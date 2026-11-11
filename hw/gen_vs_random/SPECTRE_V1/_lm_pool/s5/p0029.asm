.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sbb sil, -78
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and al, 33
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
mov bl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and cl, al
lea ax, qword ptr [rbx + rsi + 3]
test dil, -116
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
