.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ecx, eax
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp ebx, -33
sub dil, bl
xor cl, sil
lea rcx, qword ptr [rax + rdx]
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
cmp esi, 60
cmp edx, 44
add cl, dil
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
