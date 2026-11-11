.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 38
cmp rdx, -49
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
adc dil, bl
mov al, cl
and sil, -84
dec bl
neg sil
or al, -83
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
adc ebx, -5
sub sil, 71
inc sil
xor bl, -126
and si, -74
jmp .bb_0.1
.bb_0.1:
xor cl, 13
or sil, cl
xor bx, dx
and dil, cl
add sil, dl
xor bx, -65
cmovnb ebx, ecx
and eax, -1572488789
and dl, dil
add dil, dl
and cx, -117
mov sil, al
xchg esi, edi
adc dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
