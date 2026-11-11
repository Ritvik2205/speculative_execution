.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
test dl, -37
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and sil, al
jmp .bb_0.1
.bb_0.1:
and al, -68
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
test bl, 84
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
