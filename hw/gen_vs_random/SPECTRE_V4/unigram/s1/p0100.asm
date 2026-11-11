.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
imul edx, esi, 84
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test dx, bx
mov rdi, rbx
cmp dil, -124
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
movzx ax, bl
movzx edi, bl
imul ecx, esi, 6
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
sbb ecx, 29
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 5
sbb cl, al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 29
imul rsi, rax
imul cl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmp sil, 88
test sil, 29
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 68
test esi, 75
movzx rcx, dil
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
btc rcx, rdi
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test dl, 19
mov rdi, 82
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 54
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
sub ax, si
cmovl rcx, rax
sub rdx, 22
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 87
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test ecx, 89
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
