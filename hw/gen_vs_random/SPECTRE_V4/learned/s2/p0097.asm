.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rcx, -102
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
bts ebx, 22
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
sub cl, cl
xor ax, di
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
test cl, bl
cmovnp ecx, ecx
sub dl, cl
imul dl
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
cmovp eax, ebx
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
sbb ebx, edx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bts eax, 209
movzx ecx, sil
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
sbb cl, -104
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, edi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
sbb al, -101
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovnbe rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
sbb cl, -104
xor edx, edi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 68
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
