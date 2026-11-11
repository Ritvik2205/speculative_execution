.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
cmp eax, -813838876
xor al, -66
and bl, 76
sbb bl, -79
sub dil, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
sbb eax, -141178938
xor rax, -117
xor dil, cl
add dl, dl
cmp al, 105
add cl, -62
adc dil, al
dec dl
xor bl, 27
sbb al, 102
test cl, -31
mov dl, sil
lea ecx, qword ptr [rsi]
xchg cl, bl
sbb si, 76
or dl, al
sub cl, -32
mov dl, dil
inc al
add dil, dil
xchg esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
