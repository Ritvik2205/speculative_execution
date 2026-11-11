.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, sil
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
add dl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -109
test al, 59
or eax, -1161451853
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 18
add dl, cl
cmovl esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
