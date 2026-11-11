.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 69 # instrumentation
cmovnbe di, cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
add bl, 102 # instrumentation
cmovnp edi, eax
or eax, 1001462340
sub rax, 1294268026
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
or al, -83
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovs cx, bx
test dl, -81
or edx, -128
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
adc sil, -63
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
add bl, cl
add cl, al
cmp edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
add al, -112
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovno rcx, rsi
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -56
sub rbx, rbx
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add al, -44
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add al, -71 # instrumentation
cmovb rbx, rsi
sbb bl, 121
and bl, cl
mov esi, 1115061743
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
mul eax
mul cx
sbb dl, bl
test dil, -58
cmovo cx, dx
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
bt rsi, rbx
cmovnz rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
