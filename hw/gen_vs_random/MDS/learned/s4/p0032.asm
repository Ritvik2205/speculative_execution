.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
not al
or dil, cl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
or rbx, -72
xor rcx, 71
xor rsi, -117
bt ecx, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or rax, 52
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
