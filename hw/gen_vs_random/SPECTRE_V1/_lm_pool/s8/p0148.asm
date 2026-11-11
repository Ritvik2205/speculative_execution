.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
adc al, -82
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and al, dil
or ecx, 61
xchg dil, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
