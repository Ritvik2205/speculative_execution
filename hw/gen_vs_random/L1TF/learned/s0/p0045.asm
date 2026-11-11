.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
xchg ecx, edx
lea rcx, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
or dil, -113
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and cl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
