.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor di, 40
not dl
test al, 22
or al, cl
or al, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
test dil, 46
jmp .bb_0.1
.bb_0.1:
and bx, 84
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and eax, 561041355
test al, cl
bt ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
