.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
adc dil, 120
xchg edi, eax
and al, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 18
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
