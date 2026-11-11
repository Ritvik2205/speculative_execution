.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or cl, bl
xor al, 9
and al, -114
xor dl, al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
test sil, -96
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
test cl, 101
or dl, dil
or sil, sil
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
