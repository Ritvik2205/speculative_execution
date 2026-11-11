.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test dil, -80
test dl, bl
jmp .bb_0.1
.bb_0.1:
or al, 25
jmp .bb_0.2
.bb_0.2:
bt eax, ecx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
btr si, bx
test bl, 65
or rax, 52
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
test dil, -51
or al, 74
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
