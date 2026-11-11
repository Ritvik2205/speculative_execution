.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
or bl, dl
or sil, dil
jmp .bb_0.1
.bb_0.1:
and al, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, dil
xor cl, al
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rsi]
and rcx, 56
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
