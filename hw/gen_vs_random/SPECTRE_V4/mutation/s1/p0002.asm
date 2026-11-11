.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
cmp edi, edx
imul rcx, rax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
add cl, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
adc ax, bx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
cmovnz rdi, rax
cmovnb ebx, edx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
btr rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
or cx, 23
cmp ax, 28568
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
cmovle si, di
cmp dil, -29
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor eax, 365940537
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
xor rax, rsi
cmp rax, -1547540200
add al, bl
add cl, 7 # instrumentation
adc bx, 70
xchg edi, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
cmp al, 114
cmp dl, sil
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
cmovbe cx, si
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
movzx dx, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
cmovno eax, edi
sbb eax, 316213929
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
