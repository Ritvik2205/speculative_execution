.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and al, -28
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rcx, -20
and sil, -84
cmp bl, dil
cmp al, -116
sub dil, -28
and bl, -60
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
or al, sil
neg dil
sub dl, -16
mov dl, cl
and bl, bl
adc cl, dil
cmp cl, -80
sbb sil, cl
test al, 18
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
