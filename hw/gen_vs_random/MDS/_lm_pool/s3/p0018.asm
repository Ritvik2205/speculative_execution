.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and ax, 31082
xor al, 34
test dil, 46
and sil, 74
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or dil, dl
not al
and di, 91
and al, 106
test cl, sil
and sil, al
or di, 49
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
