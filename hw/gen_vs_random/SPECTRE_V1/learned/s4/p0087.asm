.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
lea di, qword ptr [rdi]
lea rax, qword ptr [rcx + rdx + 71]
bt edx, 66
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
sbb dil, al
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test dl, cl
add al, al
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
