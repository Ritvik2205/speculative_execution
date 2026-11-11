.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
cmp ecx, 83
cmp al, -1
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sbb dl, al
adc al, 116
test eax, -251558852
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
mov dil, bl
and dil, -120
xor al, -66
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
mov bl, al
sub dl, -16
or bl, bl
sub ax, -1908
test eax, 1340292467
cmp al, 105
and bl, sil
xor dil, sil
mov cl, dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
imul dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
