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
xor byte ptr [r14 + rax], 32
xor al, dl
inc si
cmovnz bx, dx
xor eax, 550678097
xor ax, 30500
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, -48271836
sbb cl, 35
add dil, 75
sbb rdx, 6
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
xchg dl, dil
cmovo ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
test ecx, eax
btc di, 107
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
sbb edi, -94
cmovs rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
