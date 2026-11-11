.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc rdx, rcx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
imul cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
mov rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
imul rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
sub dil, -28
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, 1913354318
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
add al, 40
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
test dil, -5
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
