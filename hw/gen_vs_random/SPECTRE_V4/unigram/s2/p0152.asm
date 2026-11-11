.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
add dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
neg cx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
add cl, 101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
cmovnbe edx, ecx
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 63
sub dl, 107
mul cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 4
cmovnb eax, ecx
or dl, sil
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
cmp rax, 40
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 32
sub bl, bl
sbb dx, 2
xor al, cl
mov ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
add sil, al
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
imul rax, rbx
or rdx, rbx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
not eax
xchg sil, sil
cmovnz rax, rcx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
adc al, al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and edx, 41
sub ax, ax
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
cmovl bx, dx
adc cl, al
add dl, -12 # instrumentation
cmovp esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
