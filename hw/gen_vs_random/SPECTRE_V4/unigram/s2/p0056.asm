.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ax, ax
mov rdi, rdx
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
add cx, 51
mul cl
adc sil, -63
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ebx
xor edx, 74
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
cmovbe cx, bx
adc rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
not si
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
xor rbx, -99
cmp bl, -16
or sil, -47
adc ebx, -100
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
mul rcx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sub bl, dil
xor cx, -80
cmp cl, 100
cmovz rbx, rcx
and rdi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdi]
test sil, sil
add cl, -122 # instrumentation
cmovp ax, ax
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
xor rdx, 106
cmp dil, sil
cmovnz rbx, rdx
imul al
add dil, bl
dec ebx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
bts ax, 159
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
