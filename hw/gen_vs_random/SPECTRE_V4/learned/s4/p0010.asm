.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
mov dl, sil
adc cl, -4
cmp edx, 4
and al, dil
sub cl, -94
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
sub dl, al
and cl, -118
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
xchg edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
