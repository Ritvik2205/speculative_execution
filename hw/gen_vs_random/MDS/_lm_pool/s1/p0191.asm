.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and dil, 125
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor rdi, -9
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor cl, 15
xor bl, al
xor sil, 110
test sil, dil
or sil, -78
test cl, al
xor cx, -18
and rax, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
