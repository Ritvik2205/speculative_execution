.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
cmp rdx, 98
and rbx, rdi
lea di, qword ptr [rax + rdi + 46]
jmp .bb_0.1
.bb_0.1:
sbb dil, sil
jmp .bb_0.2
.bb_0.2:
setbe dil
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rcx + rax + 40]
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 72
jmp .bb_0.5
.bb_0.5:
setle bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
