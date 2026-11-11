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
add ax, 10655
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
mov dil, al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sbb al, -43
mov sil, dil
add bl, al
imul sil
and ebx, -122
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovnbe rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovz edx, edi
add rcx, rbx
adc rdx, -90
or al, al
btr si, 114
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
test cx, 7280
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
movsx ebx, ax
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
