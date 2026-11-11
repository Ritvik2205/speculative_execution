.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rax, -1701787862
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and sil, -56
xor si, 91
test rdx, 49
xor al, -19
xor dl, al
and al, al
or dl, -8
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
test al, 22
test al, -7
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
