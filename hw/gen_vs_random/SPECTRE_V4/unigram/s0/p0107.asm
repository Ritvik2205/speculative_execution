.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 36
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
cmovnbe esi, ecx
xor dil, 117
and sil, -84
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 99
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], dx
or bl, dl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
test al, -26
cmovb esi, eax
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rsi, 0
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 54
xor ebx, -62
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
btr rsi, rsi
adc dil, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 23
add dl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 45
test bl, -116
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
cmovl di, ax
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
or cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
cmovnbe si, ax
adc edi, -83
btr rax, rdx
xor bx, 106
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 99
cmp bl, bl
mov dl, 81
or rdx, rsi
btr eax, 95
sbb rsi, rcx
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
