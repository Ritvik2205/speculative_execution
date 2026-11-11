.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
or bl, -52
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
xor ax, -23364
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
bt ax, di
or al, 16
xor sil, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 72
not cl
bt cx, ax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
