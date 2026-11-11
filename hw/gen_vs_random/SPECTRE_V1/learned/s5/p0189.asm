.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
xchg eax, esi
cmp ax, -11439
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dl, 80
lea ecx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
