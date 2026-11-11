.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
xchg ecx, ebx
and al, dl
adc sil, 59
xor al, 89
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
adc dil, 120
adc dl, -12
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and dil, dil
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
