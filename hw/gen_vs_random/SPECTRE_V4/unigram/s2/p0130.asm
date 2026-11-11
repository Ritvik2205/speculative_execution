.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
xor rax, rdx
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
cmovnp edi, edx
adc al, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
movsx ecx, al
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
sbb al, -52
cmovo edi, ecx
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
test sil, cl
add al, -40 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
xchg rdx, rsi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
imul rbx, rbx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
adc dl, 69
and cx, ax
cmp rcx, -121
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 54
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
add bl, 74 # instrumentation
cmovle ebx, edi
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
bswap rsi
imul dl
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
cmp bl, 12
and eax, 1913354318
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
sub rdx, 96
cmovno eax, edi
or dil, al
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
mov dil, cl
cmp sil, al
add al, -67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
