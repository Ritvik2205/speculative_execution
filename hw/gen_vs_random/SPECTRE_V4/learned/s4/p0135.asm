.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 62
or dl, 71
mov al, al
and ebx, -4
xor dil, dl
adc ebx, -55
mov dil, dl
xchg al, bl
cmp al, bl
add bl, dil
or eax, -646827727
test al, -26
or al, 1
cmp al, -122
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
cmp sil, 127
or eax, -646827727
adc edi, -83
or bl, sil
or bl, -35
or dil, -16
adc cl, 31
and al, 82
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp al, bl
test al, 27
sub al, dl
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
cmp al, 116
and al, 59
sub rdx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
