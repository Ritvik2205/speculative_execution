.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmp di, 10
xor sil, 56
or dl, 56
sbb dl, al
bts rdi, rax
cmovp eax, edx
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmp edi, -104
add sil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
add cl, 61
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 10
cmp dil, cl
xor cl, al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 53
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
or bx, ax
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
inc eax
cmp cl, bl
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
btc rax, rsi
add ebx, 3
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edx
add al, 5
cmovnbe rdi, rdi
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
cmovp cx, bx
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
