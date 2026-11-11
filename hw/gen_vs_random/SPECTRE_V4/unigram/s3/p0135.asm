.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, edi
sbb ax, ax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
adc sil, dl
and bl, -119
imul dl
cmovno edx, ebx
or rdx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
sbb ebx, -54
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 58
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
sbb dl, bl
sub dx, -12
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add ax, 65
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
cmovnb dx, cx
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
cmp dil, al
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
add esi, 21
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmp rdx, rdx
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
btc rbx, rsi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 62
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
add dil, -61
sub rdi, -34
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
xor dl, bl
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
or dx, 10
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
