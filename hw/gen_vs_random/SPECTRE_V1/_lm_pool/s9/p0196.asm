.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
lea si, qword ptr [rbx + rdx + 70]
bts edi, 40
or al, dil
or sil, dil
add dl, dl
lea ecx, qword ptr [rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, al
mov dl, al
lea ax, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
