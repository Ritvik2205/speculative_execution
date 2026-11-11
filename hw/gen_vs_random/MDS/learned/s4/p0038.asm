.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and bx, 94
or bl, bl
and cl, 79
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
or al, -17
or al, 24
or al, -17
or bl, cl
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
test sil, cl
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
