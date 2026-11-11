.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
cmp sil, al
and cl, 97
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rsi]
lea edi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
