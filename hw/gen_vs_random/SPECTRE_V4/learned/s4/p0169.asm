.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xor dx, -43
and ax, 25163
and bx, 35
sub al, 54
xor al, bl
adc dl, al
cmp dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
or bl, al
cmp al, -122
sub cl, bl
mov dl, bl
cmp al, -122
or bl, bl
test ax, -6584
xchg ecx, esi
cmovle rdx, rcx
add dl, -8
sub dil, dl
sub dil, -11
adc dl, 47
sub al, dil
sub dl, dil
cmp al, dl
cmovno dx, si
or dl, al
cmp dil, dl
test al, dil
or ax, -26182
sub al, sil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
