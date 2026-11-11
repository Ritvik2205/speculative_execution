.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edx, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
xor dl, cl
and bl, -65
cmp cl, bl
lea ax, qword ptr [rdi]
or eax, -1161451853
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
