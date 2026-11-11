.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
xor cl, 24
or sil, cl
xor dil, sil
btr cx, ax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test bl, -114
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test al, 127
and rsi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
