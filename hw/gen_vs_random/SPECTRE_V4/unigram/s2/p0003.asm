.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
movsx si, cl
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
cmovb bx, cx
xor cl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
adc rax, 2071185388
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor rdx, 106
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
add al, dil
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
mov al, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
cmp bl, cl
add dl, -40 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
test sil, dl
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
adc sil, 88
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 12
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
movzx eax, dx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
add al, 17 # instrumentation
cmovnle eax, esi
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 23
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
add dx, 95
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 21
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 97
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
