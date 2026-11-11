.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 57
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and ax, 26813
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
xor dx, 57
add dil, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
