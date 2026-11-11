.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
test dx, bx
or dl, cl
and al, 84
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or cl, bl
or al, dil
jmp .bb_0.1
.bb_0.1:
or dil, 16
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
test cl, -113
test dl, al
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
or dl, -31
btc cx, 115
bt ax, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
