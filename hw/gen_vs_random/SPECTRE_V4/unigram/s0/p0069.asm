.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or al, dl
dec ebx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 81
sbb di, -76
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
add ax, 28666
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
bts eax, eax
sub ecx, eax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xor al, 59
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
movzx ax, dl
xchg dl, dl
test sil, cl
test al, dl
cmp rbx, 31
cmovnbe rcx, rbx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 67
sbb ebx, 65
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 85
cmovnz eax, esi
cmp bl, al
add al, -75 # instrumentation
adc al, 79
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
cmovnbe rbx, rcx
add cl, 122 # instrumentation
cmovz rdi, rsi
inc rax
cmovnb bx, bx
adc sil, 11
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 76
sub dl, dil
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 16
sbb rax, rdi
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edx
and dil, bl
and cl, 58
mov rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
