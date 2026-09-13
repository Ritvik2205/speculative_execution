.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33 
cmp dl, sil 
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx 
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi] 
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax] 
add cl, -121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx 
btr rbx, rbx 
cmovnz rdi, rax 
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25 
imul rcx, rax 
sbb bl, cl 
sbb eax, -141178938 
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax] 
cmovno eax, edi 
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi] 
cmp rax, 1097504565 
or cx, 59 
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], -74 
cmovnb ebx, edx 
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx] 
cmp al, 116 
movzx dx, dl 
cmp ax, 26170 
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi] 
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57 
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx] 
cmovbe cx, si 
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si 
add al, bl 
cmp edi, edx 
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi] 
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx 
add cl, 7 # instrumentation
adc bx, 70 
xchg edi, eax 
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi] 
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73 
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21 
cmovle si, di 
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx 
xor eax, 365940537 
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi 
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di 
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax 
xor rax, rsi 
cmp dil, 53 
adc ax, bx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
