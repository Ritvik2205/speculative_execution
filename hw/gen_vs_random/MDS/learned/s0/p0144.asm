.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 6
bts rdi, rbx
btr ecx, eax
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
test al, dil
and al, cl
and cl, -111
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
xor al, bl
or sil, dil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, 25
xor bl, cl
bts bx, 3
xor ax, 23633
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
