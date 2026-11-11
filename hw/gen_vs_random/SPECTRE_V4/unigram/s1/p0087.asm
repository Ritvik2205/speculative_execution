.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno eax, ecx
cmovno eax, edi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
add dil, -57 # instrumentation
cmovno rdi, rcx
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
add cl, -119 # instrumentation
sbb ebx, 35
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ecx
and si, dx
cmovbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
mul ecx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 62
imul bl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add bl, 95 # instrumentation
mov al, 59
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and bl, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
mov bl, al
cmovnle esi, edi
cmovns di, dx
mov dl, -124
bt rax, rax
cmovnbe ecx, edi
test rsi, 57
add sil, -18
xor bl, bl
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
dec al
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
cmovl rax, rdx
cmp cl, -105
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 29
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 66
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
cmovnp rax, rsi
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
