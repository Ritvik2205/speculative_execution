.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
adc rax, rcx
mov rax, rdx
or dl, 1 # instrumentation
neg ecx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and eax, -1555813586
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
add bl, cl
cmovnb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
add ax, 6414
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
bswap eax
movsx bx, cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
adc rsi, 82
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
cmp sil, 127
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
adc cl, -86
add dl, 109
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
cmovnz esi, ebx
bt edi, 233
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
movzx rdi, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
sub al, al
btc ecx, 233
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
