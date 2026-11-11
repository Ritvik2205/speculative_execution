.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
sbb dl, al
and cl, bl
sbb dl, dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
test al, 40
xor al, -119
jns .bb_0.3
jmp .exit_0
.bb_0.3:
xchg eax, esi
add sil, al
not bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
