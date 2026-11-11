.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
or dil, -78
test al, cl
test rdx, 62
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rsi, 83
test al, 22
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or sil, al
test eax, 158941032
test cl, sil
or al, -24
test sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
