.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
add esi, -5
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
xor dil, 44
test dl, 19
mov rdi, 91
cmp eax, -92285311
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rbx
mul esi
movsx edx, ax
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
or bl, 83
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
or dx, bx
cmovnp rax, rbx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 22
xor bx, 15
cmovle bx, ax
sub ebx, 78
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
sbb cl, bl
imul edx, ecx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
or ax, -12775
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
mov al, dil
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
add dl, bl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
xor esi, 45
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
adc cl, sil
test eax, -558243208
and rsi, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
