.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, bx
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
add cl, 7 # instrumentation
adc bx, 70
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp rax, -1247892360
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
cmp al, 114
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
btr rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
imul rcx, rax
xor eax, 550678097
cmovle si, di
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
cmovnb ebx, edx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 64
cmp dil, -92
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
or cx, 23
sbb eax, -141178938
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmovbe cx, si
add cl, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
cmovnz rdi, rax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmp edi, edx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
cmp dl, sil
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xor rax, rsi
add al, bl
movzx dx, dl
xchg edi, eax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
cmp ax, -22704
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
cmovno eax, edi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
