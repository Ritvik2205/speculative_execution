.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
inc dl
adc dl, bl
jmp .bb_0.1
.bb_0.1:
mov eax, 6
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add cl, sil
bt eax, edi
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
mov bl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
