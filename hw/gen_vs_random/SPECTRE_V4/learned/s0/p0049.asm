.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovnp di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub al, bl
sub cl, -74
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
sbb bl, -94
cmovp rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
imul esi, edx, 69
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
imul di, si
adc al, -58
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 49
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
add ebx, eax
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
btc rsi, 140
xchg bl, dl
and sil, bl
test bl, 24
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 15
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
test ecx, 48
cmovs rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 52
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
