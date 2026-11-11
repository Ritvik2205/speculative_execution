.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
add bl, 70
and eax, 933895314
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
test cl, -24
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, -57
add ecx, 82
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
cmp cl, 5
lea di, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
