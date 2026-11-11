.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
mov al, bl
or ax, 27604
mov dl, cl
xchg bl, al
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
sbb bx, 87
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
cmp sil, al
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
sub bl, al
add cl, cl
adc al, bl
cmp dil, -29
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and sil, -84
xchg edx, eax
sub dl, bl
adc sil, dl
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
