.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovnbe rsi, rcx
and bl, 76
bt eax, ebx
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, -48
test rax, -1395313845
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
mov al, -114
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
cmovo ebx, eax
cmp ax, -22704
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or dil, 89
sub cl, dl
bt dx, bx
and dl, al
cmp al, -106
bts cx, 158
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
xchg ecx, edi
imul sil
add eax, esi
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test rdi, rax
cmp bl, -16
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
or edx, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
