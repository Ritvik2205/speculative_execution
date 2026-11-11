.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, -558243208
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovns eax, edx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
movzx eax, al
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add bl, dl
btr bx, si
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
inc rcx
and rcx, -102
cmovnb dx, dx
sub al, 50
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
sub bl, 17
cmovb edi, edx
btc ebx, 94
sbb cl, dl
sub rsi, 26
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
bt edi, edx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 92
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
add al, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmovs di, di
sub rdx, 22
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rax, 11
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmovnz esi, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
