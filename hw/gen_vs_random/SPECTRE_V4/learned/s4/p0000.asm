.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
or al, -71
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
add dl, dl
add rax, 83
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 53
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], esi
or dl, dl
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
test bl, al
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
adc al, -58
cmovnz edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
cmovnb ax, ax
cmovnbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 77
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
mov dil, sil
sbb cl, sil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 66
cmovb edx, esi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
xor dil, dl
or ebx, esi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
