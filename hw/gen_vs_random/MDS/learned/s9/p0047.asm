.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, bx
and cl, cl
bts rdx, rdi
or al, -22
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and bl, 68
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and al, 14
or dl, dl
or bl, -54
test al, -7
jmp .bb_0.1
.bb_0.1:
and edi, 23
and eax, -829294476
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
