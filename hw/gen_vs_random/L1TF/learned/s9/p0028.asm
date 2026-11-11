.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
xor dx, 67
add sil, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 43
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
test bl, 12
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
