.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rax, rdx
dec rdi
imul dl
cmovnbe rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
or dil, cl
test edx, 573099753
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
test al, bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
cmovno eax, esi
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
movzx rbx, ax
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
adc bl, dl
test ebx, 1263899340
sbb rsi, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 59
or bl, cl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
or edi, 95
cmovnbe rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add al, al
sbb dx, 26
sbb dl, bl
sbb bx, dx
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
or ebx, 61
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
test rcx, -2118888343
cmp si, 63
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
test ecx, 94
cmovnl rax, rsi
cmp dl, 80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 84
or esi, ebx
cmp esi, 25
and al, dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
