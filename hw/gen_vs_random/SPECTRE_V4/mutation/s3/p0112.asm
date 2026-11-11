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
cmp dl, 23
cmovp rbx, rcx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc ebx, -5
xor ebx, -62
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btr cx, 252
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
neg cx
btc rsi, 36
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
adc dl, al
xor rsi, -102
mov ax, 31802
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
movzx edx, al
dec cx
imul eax, edx
btc rdx, rsi
and rcx, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
