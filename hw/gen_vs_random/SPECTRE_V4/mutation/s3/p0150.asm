.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add cl, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
dec si
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
cmovp rdx, rbx
or eax, -612395655
btr rdx, rbx
cmovle rdx, rax
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
bt cx, dx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
sbb cl, 40
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
neg bl
cmp rsi, 22
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -12
cmovz esi, eax
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -1807520971
add al, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
mov dx, di
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
sbb ax, 1843
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
test esi, -2111618709
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and al, dl
and dl, al
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
