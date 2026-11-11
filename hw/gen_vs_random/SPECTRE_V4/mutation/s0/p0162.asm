.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -44
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
sbb eax, 727775941
cmp ax, -18179
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmp edi, edx
xor eax, -1772786275
add cl, 7 # instrumentation
adc bx, 70
cmovnb ebx, edx
xor rax, rsi
cmp dil, 101
cmovle si, di
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add al, bl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
or cx, 23
cmp rax, 2096656187
xchg edi, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmp dl, sil
add cl, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
adc ax, bx
imul rcx, rax
movzx dx, dl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
cmovno eax, edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
cmovnz rdi, rax
cmovbe cx, si
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
btr rbx, rbx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
