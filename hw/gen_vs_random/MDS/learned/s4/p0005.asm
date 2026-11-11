.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -71
test al, 22
and al, 14
xor al, -26
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or rdx, -109
xor cl, dil
and rax, 4
jmp .bb_0.1
.bb_0.1:
xor al, cl
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
or dil, -41
bts bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test eax, 1287331633
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
