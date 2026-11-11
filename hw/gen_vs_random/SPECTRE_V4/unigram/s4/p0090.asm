.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 90
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ebx
sbb ax, 1843
test sil, 68
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
cmovnle dx, bx
bts rax, rbx
or sil, al
add ebx, -57
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmovnz bx, dx
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
sub rdx, 20
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
cmovo si, dx
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
cmovnle rax, rbx
test al, 57
or al, dl
adc dil, 38
adc edi, -83
dec bl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
sub dl, 107
cmovns di, bx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 41
mov dl, al
bt rbx, 52
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 56
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
xor si, -73
add cl, 68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
cmovnz rbx, rbx
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
