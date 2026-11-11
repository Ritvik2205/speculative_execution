.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
or al, dil
and bl, bl
or sil, al
and cl, 99
or rax, -82
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
adc bl, 86
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
