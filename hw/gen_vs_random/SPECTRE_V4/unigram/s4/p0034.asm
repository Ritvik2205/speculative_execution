.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
imul di, bx, 25
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
add cl, -33 # instrumentation
not al
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
and cl, al
cmovs cx, dx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 39
sub sil, dl
or cl, 12
mov dl, -124
sub rax, -1066968986
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
cmovno ax, dx
sub al, 96
sbb dil, 70
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and cl, dl
or ax, bx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 98
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
mov al, cl
and al, 59
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 12
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
add bl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
test al, 18
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
cmovno ebx, eax
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
sub si, di
neg rcx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rax
cmovnz edi, edi
add al, -7 # instrumentation
btc dx, cx
cmovp eax, ebx
adc bl, cl
or bl, -80
dec si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
