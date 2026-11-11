.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
btr cx, dx
or dil, -113
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sbb dl, sil
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
mov dx, 6
bt rax, rdi
jmp .bb_0.3
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
adc sil, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
