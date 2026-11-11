.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 50
cmovnz rax, rcx
xor eax, eax
sbb dl, bl
and rbx, 16
cmovnp ecx, edx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 80
sub eax, -90064733
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor cl, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
add dl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edi
dec edi
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
cmovl edi, edx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and sil, -84
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
sub dl, sil
sub ecx, -107
and bl, bl
add dl, -82
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmp bx, 113
mul ecx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
cmovs ecx, ebx
not rdx
add bl, 102 # instrumentation
cmovnp ecx, edx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
neg rcx
sub si, cx
cmovle rax, rdx
test dil, dil
sub dl, 107
or bl, -86
adc rsi, 82
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
