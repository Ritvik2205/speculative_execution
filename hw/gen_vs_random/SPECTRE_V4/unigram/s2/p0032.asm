.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
add sil, 110
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test bl, 0
sbb dl, dil
cmovns si, bx
sbb dl, bl
xor al, 102
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 31
bt eax, 84
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
adc eax, -79
movzx rbx, cx
sbb edx, 98
or al, -71
not dx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 88
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 33
cmovno ebx, eax
mov rbx, 9101099553822202722
movzx rbx, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
cmovnb dx, dx
cmovnb ebx, edx
and di, 90
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 50
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 41
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 61
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 42
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
xor rbx, 12
bt ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
btc ebx, 94
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
cmovnbe eax, edx
add bl, -18 # instrumentation
mov rdi, rcx
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
mov rax, rsi
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
