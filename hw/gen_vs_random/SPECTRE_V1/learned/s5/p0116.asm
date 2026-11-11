.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 97
sub bl, -6
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
sub cl, sil
test al, 40
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
or sil, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
sbb cl, dl
sub dl, sil
lea rax, qword ptr [rbx + rdi]
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
