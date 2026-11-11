.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
or dl, -92
lea rax, qword ptr [rdx + rbx + 82]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setp sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
