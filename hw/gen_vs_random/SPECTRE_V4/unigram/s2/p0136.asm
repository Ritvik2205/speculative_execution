.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ebx
inc rdx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
mov dil, dil
sbb bl, bl
test bl, cl
test al, -24
and dx, -107
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
cmovnp di, cx
imul ebx
add cl, -33 # instrumentation
not dil
add al, 40
cmp edx, -95
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sbb rdx, rdi
dec al
bswap edx
neg cl
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
sub rsi, -104
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
sub dl, 107
and dx, -107
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
sub ax, -13057
cmovz rsi, rbx
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
sbb ecx, edi
cmovle rdi, rdi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
and al, dl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
cmovnz rdi, rcx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
