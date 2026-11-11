.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
or dil, dl
or al, cl
xor dil, -70
and ebx, 34
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xor rax, -843636050
test dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
