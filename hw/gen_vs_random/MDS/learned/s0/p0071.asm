.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and al, sil
or sil, sil
and dl, -73
jmp .bb_0.1
.bb_0.1:
xor cl, al
xor al, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or edx, edi
and sil, cl
and dl, bl
jmp .bb_0.4
.bb_0.4:
test dil, -51
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
