.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
add rsi, rax
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
movzx rdx, cx
sub bl, 17
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
movzx esi, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 58
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add al, -71 # instrumentation
adc al, cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
test dil, sil
movzx ebx, al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
test esi, 69
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
xor bl, dil
add cl, -117 # instrumentation
cmovs rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
sub al, sil
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 94
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 63
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
or edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
or sil, sil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add al, 118
and dil, cl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
xor bl, cl
cmp sil, al
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 14
or cl, 50
adc bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
