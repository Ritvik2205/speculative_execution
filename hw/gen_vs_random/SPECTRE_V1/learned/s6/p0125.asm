.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
cmp edi, 86
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
sub cl, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
cmp sil, dil
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, dil
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
adc dl, -49
sbb ecx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
