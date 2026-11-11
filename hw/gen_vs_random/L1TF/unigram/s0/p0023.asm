.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
add dl, 109 # instrumentation
cmovnb rax, rdx
cmovbe di, di
sub al, dl
add dil, cl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
cwde
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
mov bl, sil
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
