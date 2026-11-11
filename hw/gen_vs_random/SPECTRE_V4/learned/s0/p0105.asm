.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
add dl, 63 # instrumentation
cmovle cx, dx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 39
xor dl, 87
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor bl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 71
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
btr ecx, eax
adc al, 36
cmovns eax, eax
add dl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
bts rax, 157
test rax, -331426050
cmovno dx, ax
and rcx, -102
not ax
sbb dl, -99
xor eax, 181978569
cmp dx, bx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
xchg ecx, eax
sbb cl, 20
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
test rcx, -2118888343
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 70
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
mov bx, -31043
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rcx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
imul cl
mul dl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmp rax, -227205962
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
add eax, -1796699558
bt ebx, 228
jmp .bb_0.1
.bb_0.1:
mov rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
