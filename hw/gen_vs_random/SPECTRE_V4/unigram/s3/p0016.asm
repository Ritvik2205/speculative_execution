.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz eax, ebx
adc rsi, 73
sub bl, 17
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
sub cl, -74
cmovl rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
imul bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
adc cl, 72
cmp dil, -124
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and dil, bl
or al, 96
sub sil, -36
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
imul cl
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
adc esi, 90
add edi, edx
or dil, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 24
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
add dx, -90
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
add cl, cl
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
sub cl, cl
sbb cx, 59
dec al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 21
test sil, cl
cmp rdx, 84
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 92
xor rdx, 68
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
and cl, dl
sub cl, sil
cmp si, cx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], ax
or edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
