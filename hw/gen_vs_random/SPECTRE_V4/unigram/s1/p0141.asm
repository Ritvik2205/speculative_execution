.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle eax, edx
adc esi, 63
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
xor al, 57
add cl, 28 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
adc dl, dil
add sil, dil
movzx dx, cl
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 20
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 94
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 13
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovno bx, bx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
sub si, dx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rcx
sub al, 59
sub rbx, 101
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
mov eax, -1056201206
or bl, bl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
btr di, 245
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 80
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
sub ecx, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
btc rcx, rdi
or ax, 57
and cx, bx
add cl, cl
and cl, cl
btc rdx, 130
dec dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
xor ax, si
cmovnb rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
