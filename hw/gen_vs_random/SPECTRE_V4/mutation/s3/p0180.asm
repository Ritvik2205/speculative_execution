.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
cmovs rax, rdx
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
test esi, -2111618709
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub di, bx
xchg rbx, rax
or rdx, rbx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or cl, al
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, cl
imul dl
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnz rbx, rsi
cmp dl, cl
cmp dl, 95
cmovp rbx, rcx
mov bl, dl
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
sub al, 11
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor ax, -6064
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
dec dx
or dl, cl
and di, dx
dec al
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
imul ax, di, 101
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
not rcx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sub ax, -1908
btc rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
