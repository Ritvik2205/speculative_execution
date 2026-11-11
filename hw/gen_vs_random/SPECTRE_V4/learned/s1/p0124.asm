.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
cmp al, 109
and al, 41
movsx dx, dil
mov bl, sil
cmovl ecx, edi
test dl, -125
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
cmp dl, 23
mov dil, cl
sub cl, -51
xor cx, -80
add dl, sil
and cl, -118
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
add sil, al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
test sil, dl
xor eax, 167244411
sbb dl, -62
sub ax, -1393
or bl, sil
or dl, al
xor edx, 41
sub cl, bl
xor dil, sil
add cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
