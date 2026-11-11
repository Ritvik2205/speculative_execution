.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
cmp eax, ebx
not eax
xchg rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 79
imul ax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 30
sbb di, -105
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
dec rbx
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
bt rcx, rdx
imul esi, edx, 1
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
movsx eax, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
neg rsi
and bl, -60
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
xchg rdx, rcx
add al, dl
and dl, -53
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
cmovnle rax, rbx
mov esi, 1115061743
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
bts ax, ax
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
dec dil
cmp bl, sil
adc dil, dl
or dl, -26
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
bts dx, ax
add ax, ax
bts rbx, rcx
dec di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
