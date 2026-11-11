.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rbx
or al, cl
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rbx]
xor dil, dl
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
movsx edi, dl
test edx, 1479885278
sbb dl, -106
btr ax, 109
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt edi, eax
and dx, -107
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
movsx ecx, cl
inc al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
adc ecx, 55
add di, ax
sbb dil, cl
or cl, 66
cmp al, 98
xor di, 90
sub sil, cl
add cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
dec dl
xor cl, -15
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
sub sil, al
or cl, 83
add al, bl
sub al, cl
or ax, ax
or ax, -13633
cmovs edi, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
mov ebx, 51969593
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
