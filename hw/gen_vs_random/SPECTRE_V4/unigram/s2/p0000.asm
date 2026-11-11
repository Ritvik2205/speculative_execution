.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -57
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmp bx, 113
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
adc dil, 38
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 97
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
test dl, -102
or dil, -16
or dl, 1 # instrumentation
neg ecx
cmovl eax, esi
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
cmovnp ebx, eax
add al, al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovb bx, dx
movzx rdi, si
add al, -109 # instrumentation
cmovns dx, di
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
cmovo esi, esi
imul rcx
and si, dx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
add bx, 53
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
cmovnb esi, edx
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 24
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
test ebx, 60
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
mov al, cl
cmovnz dx, ax
or dl, 71
movsx ecx, dx
or edi, -78
cmovnb edi, edi
btc rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
sub di, cx
neg bl
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
cmp al, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
