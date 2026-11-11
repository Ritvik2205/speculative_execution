.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 48
test sil, al
or al, -61
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and sil, sil
and sil, bl
test dl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
xor rbx, 89
and ax, 27170
or al, bl
xor sil, cl
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
