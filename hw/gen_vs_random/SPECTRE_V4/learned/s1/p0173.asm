.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test cl, sil
and dil, -23
xor ax, 13329
cmp al, dl
test ecx, 860867711
inc eax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or bl, al
and dl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
