.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test edi, -1252846009
xor al, 99
or bl, dl
or al, bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
test al, sil
not dil
or esi, -110
and si, -121
or bx, 91
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or dil, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
