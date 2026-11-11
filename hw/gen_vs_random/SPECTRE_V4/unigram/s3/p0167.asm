.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rdx, rbx
movzx eax, bl
movzx rsi, bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 86
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
adc edx, 39
add rdi, rsi
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmp bx, di
sbb ebx, 77
sbb bl, 57
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 39
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
add ax, -13169
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
add dl, -94 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
sub dil, sil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
sub al, 119
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
cmovl rbx, rcx
or dil, dil
add rax, 79
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
cmovnbe si, di
xor dl, 18
and dl, 29
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 65
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmp bl, 13
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
cmovnbe rcx, rsi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
