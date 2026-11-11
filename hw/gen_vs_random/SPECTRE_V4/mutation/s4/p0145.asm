.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movsx eax, dl
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
xor rsi, rbx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
cmp di, -8
add ebx, eax
and al, al
xchg esi, eax
cmovb cx, dx
cmovno rsi, rcx
adc edi, -83
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
and bl, 76
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
xor al, dl
inc si
cmovnz bx, dx
xor eax, 365940537
cmp al, 116
bts di, si
test sil, dl
movzx si, cl
imul rcx, rsi, -43
btc edx, ebx
cmp dil, -29
mul si
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
bt ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, al
or rdi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
xor dil, 117
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
