.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -48271836
movzx dx, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
btr rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmovle si, di
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
cmovno eax, edi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
cmp dil, -92
cmp edi, edx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
sbb eax, -920840872
imul rcx, rax
cmp ax, 26170
or cx, 23
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
cmovnz rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
xor rax, rsi
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmp rax, 1097504565
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmp al, 115
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
adc ax, bx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add al, bl
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmovnb ebx, edx
cmp dl, sil
add cl, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
xchg edi, eax
add cl, 7 # instrumentation
adc bx, 70
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovbe cx, si
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
