.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
and al, -124
test edi, -2098143765
adc al, -70
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
mov bl, dl
and sil, sil
sub cl, -127
cmp bl, cl
xor dl, bl
sbb bl, dil
or bl, dl
sub al, 63
sub al, 55
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
cmp al, -78
adc dl, dil
and al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
