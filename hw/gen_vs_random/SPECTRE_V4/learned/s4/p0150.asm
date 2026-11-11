.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
or al, 27
adc al, cl
xchg dl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
adc dil, 109
and al, 85
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
adc dil, 109
xor bx, 106
and dil, -120
and cl, 32
or al, al
mov bl, -69
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb cl, 45
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test eax, 1600638830
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
movsx dx, sil
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 22
cmp eax, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
