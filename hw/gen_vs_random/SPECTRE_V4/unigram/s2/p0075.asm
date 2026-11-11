.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
test dil, 28
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 99
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
xor si, 22
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
adc bl, sil
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
test dx, di
mov rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 72
sub dil, al
sbb esi, 47
mov rbx, 9101099553822202722
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor al, bl
add bl, -18 # instrumentation
mov rax, rbx
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 67
btr rcx, rsi
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 56
add dx, -90
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], dx
add bl, -109 # instrumentation
sbb esi, 48
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
xor dl, sil
sbb eax, -1688332460
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
cmovnb rdx, rdi
xor si, cx
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
test dil, 17
cmovp rbx, rdi
add bl, -109 # instrumentation
sbb ebx, 5
test eax, -818909344
add eax, ecx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 93
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
mov rdi, 54
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
