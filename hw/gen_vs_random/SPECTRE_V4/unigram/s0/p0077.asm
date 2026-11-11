.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, ecx
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
add rdx, rbx
cmovle edx, ecx
cmovnz ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 70
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 89
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
xor bl, 93
cmovp eax, eax
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 6
xchg rdx, rcx
test sil, dl
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
movzx rcx, si
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 74
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovns eax, ebx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
cmp dil, -124
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
adc ecx, -12
mul esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
adc bl, dil
add bl, -109 # instrumentation
sbb edi, 96
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
cmovnp rax, rcx
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
or sil, 11
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 23
mul cl
cmovo rbx, rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 1
dec eax
add dl, bl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 67
cmp rbx, 50
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 85
cmp cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
