.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 26
sbb cl, cl
and al, dl
sbb cx, 4
neg bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 90
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
cmovle bx, bx
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
inc esi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 8
cmovp cx, ax
add cl, -21 # instrumentation
adc rax, 28
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
movzx edi, bl
bts eax, 209
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
adc bl, bl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
btr di, dx
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
add edx, ebx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 38
cmp rsi, 29
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
xor bl, 93
and bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], bx
xor dl, 59
cmp rax, -227205962
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ecx
sub sil, -36
cmovle rsi, rax
xor rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
