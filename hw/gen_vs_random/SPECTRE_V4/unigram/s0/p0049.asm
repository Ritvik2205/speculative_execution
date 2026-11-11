.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, -95
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 59
cmp cl, 49
adc dl, 22
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
mov rsi, 4368505613814921305
xor rdx, 106
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
btr esi, 227
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
cmovnz rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
cmovnz rdi, rdx
cmp sil, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
adc dil, dil
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
test al, 72
adc eax, 1307735127
cmovb dx, cx
cmovnp eax, ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
sub dl, 107
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
or esi, 32
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
adc cl, -86
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
sbb rcx, rdx
btc ecx, esi
mul rbx
cmp rdx, -49
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
adc eax, -60
test eax, 1600638830
mul cx
inc di
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
not rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
