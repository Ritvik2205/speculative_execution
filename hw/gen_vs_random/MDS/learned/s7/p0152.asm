.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
test al, 22
or al, -78
or bl, al
or dl, -8
xor dil, -70
xor al, bl
or bl, dl
jmp .bb_0.1
.bb_0.1:
xor al, 99
and cl, sil
or edx, ecx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor cl, 98
and al, -8
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
