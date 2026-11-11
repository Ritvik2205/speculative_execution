.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
sbb ecx, 69
and sil, -84
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
neg al
add dil, 75
and bl, dl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or al, -90
and dl, -11
xor al, -120
sub bl, -89
cmp al, dil
test ecx, -304234347
adc al, 43
cmp al, cl
xchg dx, ax
mov bl, dl
mov bl, 106
adc cl, -86
sub dx, -12
sbb dil, 36
mov dl, sil
sub dl, bl
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
adc sil, 88
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
