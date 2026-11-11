.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
xor dil, sil
not edx
or al, -48
xor dl, 64
jmp .bb_0.1
.bb_0.1:
add al, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test bl, 84
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
