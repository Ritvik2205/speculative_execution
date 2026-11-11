.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 71
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
cmp al, 23
xchg al, dl
test al, 42
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
mov dil, bl
test bl, -8
test bl, -8
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
