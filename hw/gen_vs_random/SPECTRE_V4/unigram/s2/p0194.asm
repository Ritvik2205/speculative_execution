.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
mov rsi, rax
cmovo rdi, rdx
sbb dil, bl
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
movsx rcx, ax
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub sil, bl
or si, ax
or al, dil
cmovnb si, si
neg bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 67
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 21
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 79
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
cmp ax, -15409
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and bl, dil
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
or si, 66
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and esi, 55
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
add rax, 15
cmovl rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
adc esi, 90
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
imul dx
cmp al, sil
mov esi, 95
sbb cl, 19
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
adc al, dil
movzx si, dl
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmp al, 19
add edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
