.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
mul si
mov ebx, 817819255
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 80
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 14
or rdx, 1
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
btr rsi, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
inc cx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
xor bl, 27
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
xor esi, ebx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 71
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
or rdx, 1
cmp rcx, rax
xchg edi, edx
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, -33
or rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and dil, -61
neg bl
cmovle rdx, rdx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mov edx, edx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
or cl, bl
adc dl, sil
imul sil
sub ecx, -107
xor ebx, -62
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
imul rdi, rbx
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
cmovl dx, ax
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
sbb ax, 16480
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
xor al, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
