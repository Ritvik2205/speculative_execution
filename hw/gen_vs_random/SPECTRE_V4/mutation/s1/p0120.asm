.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 16 # instrumentation
cmovnz ax, cx
imul dl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovbe ecx, eax
or al, -19
cmovp rsi, rdi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add dl, 47 # instrumentation
cmovnle bx, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
btr rax, rbx
or dl, dl
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btr rax, 187
neg al
bswap edi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc ebx, -100
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
btc rsi, 77
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
adc dl, al
xor rsi, -3
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
