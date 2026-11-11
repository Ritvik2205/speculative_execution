.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
and bl, bl
sub edi, esi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
mov al, 82
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 66
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
adc cx, 86
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
adc rdx, rbx
mov rdx, rdi
movzx ebx, dil
or edx, 0
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
mov si, -8007
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
cmovnb cx, dx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub edi, ebx
add dl, 92 # instrumentation
cmovnl rsi, rax
cmovz edx, ecx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
cmovbe di, ax
mov bl, sil
sub al, dl
sub al, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
xor bl, bl
test rdi, rax
sub esi, -69
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 13
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
neg si
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
sbb sil, 24
cmp dl, sil
cmp edx, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
