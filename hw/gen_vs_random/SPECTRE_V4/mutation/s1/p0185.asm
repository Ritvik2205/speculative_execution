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
and eax, -1948401947
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
add ax, 6694
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
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovb rsi, rsi
movsx ecx, bl
dec al
dec edx
xor bl, cl
xchg bl, al
xor dl, al
mul sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
add cl, -65 # instrumentation
adc al, cl
add si, ax
sub cl, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xor al, -40
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add dl, bl
add ecx, esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
