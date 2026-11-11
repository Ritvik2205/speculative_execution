.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo di, bx
or dl, 51
or cl, dl
test rdi, 43
bt ax, bx
and al, -55
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and cl, cl
btr rax, 209
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
