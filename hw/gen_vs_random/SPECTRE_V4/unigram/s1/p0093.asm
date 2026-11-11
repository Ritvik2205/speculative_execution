.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not di
sbb bl, -94
dec eax
add al, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
sub rdx, rax
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
sbb edx, 98
cmovo edx, ebx
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
bts ecx, 67
sub ebx, edx
btc si, 61
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 39
dec cl
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 13
dec rax
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 97
test bl, 0
sbb bx, di
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 87
sbb sil, 108
imul rcx, rax
test sil, cl
sbb bl, -94
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 67
adc dl, 81
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
test bx, si
cmp edx, 28
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 11
adc edi, 45
add rsi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 93
cmovs rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
