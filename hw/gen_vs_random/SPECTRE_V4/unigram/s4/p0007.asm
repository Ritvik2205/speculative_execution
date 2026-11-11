.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, cl
xor cl, dil
xor eax, 1760581269
movsx dx, al
adc dil, bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
xor rdx, rax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
add cl, -119 # instrumentation
sbb eax, -2001663753
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
movsx rsi, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
movzx bx, dil
cmovb esi, edx
btc cx, 92
and cl, -128
or rcx, 93
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, rax
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
sub dil, -11
xor si, -73
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
imul dl
sub bl, 66
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmovp bx, bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and dil, bl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
adc cl, cl
and dl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
imul bx, si, 52
add sil, -74 # instrumentation
cmovnp rsi, rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
cmovl bx, cx
adc al, dl
cmp bl, dl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
