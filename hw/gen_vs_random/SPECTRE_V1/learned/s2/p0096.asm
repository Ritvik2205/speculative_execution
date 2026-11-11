.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
sbb dl, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, dl
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
or ax, 18658
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
add bl, cl
jb .bb_0.3
jmp .exit_0
.bb_0.3:
and cl, 86
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
