.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
btc bx, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
jmp .bb_0.1
.bb_0.1:
test dil, cl
test al, 127
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or al, dl
and eax, 366961170
jmp .bb_0.2
.bb_0.2:
test ax, 18697
bts di, 37
bt bx, di
xor al, -26
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
