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
movzx di, dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
lea bx, qword ptr [rcx]
xor si, cx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
test cl, bl
cmovnp ecx, ecx
sub dl, cl
add rdx, 33
and al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
test bl, dl
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
btc rdi, rcx
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
sbb dl, dil
and bl, sil
xor cl, -101
sbb bl, -94
imul dx
add bl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
cmp bl, dl
test bl, 24
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
test bl, al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rax, 33
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
mov dil, -118
xor eax, -164167056
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
