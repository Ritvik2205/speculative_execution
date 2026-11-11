.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and al, dl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
sbb ax, 7207
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
btr rdx, rbx
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
cmovp rdx, rbx
dec si
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
bt cx, dx
cmp rsi, 22
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
xor dl, bl
and dl, al
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -12
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
add cl, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
test esi, -222751961
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
sbb cl, 12
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
cmovle rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
or eax, -1341747033
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -1807520971
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
mov dx, di
cmovz esi, eax
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
neg bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
