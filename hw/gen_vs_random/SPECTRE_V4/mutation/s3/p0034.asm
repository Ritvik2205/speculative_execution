.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
xor dl, bl
add al, bl
cmovz esi, eax
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and dl, al
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
add cl, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
btr rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
or eax, -1779536330
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
sbb ax, 75
cmp rsi, 22
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
bt cx, dx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
test esi, -2111618709
sbb cl, -69
cmovle rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
neg bl
mov dx, di
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and al, dl
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
cmovp rdx, rbx
dec si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
