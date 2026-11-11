.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, cl
adc al, cl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
xchg esi, edx
test al, -99
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
