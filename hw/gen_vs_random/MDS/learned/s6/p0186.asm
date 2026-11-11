.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
test al, 91
test ecx, -1843375753
xor si, 91
or cl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and ecx, -104
xor si, 80
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
not ebx
xor sil, -46
xor dil, 124
xor al, cl
jmp .bb_0.1
.bb_0.1:
or sil, cl
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
