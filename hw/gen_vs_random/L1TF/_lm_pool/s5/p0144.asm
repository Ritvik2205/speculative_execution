.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 88
setno sil
sub al, 26
xor al, 38
and al, -68
adc di, 80
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add sil, -61
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
