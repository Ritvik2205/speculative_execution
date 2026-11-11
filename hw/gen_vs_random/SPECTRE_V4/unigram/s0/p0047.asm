.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or cl, al
cmovnb bx, cx
or ax, 27604
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
or cl, cl
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 81
cmp dil, 101
sbb edi, ebx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
or dil, al
or al, -90
and bx, ax
cmovl bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], si
movsx rax, ax
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and bl, -60
or bl, bl
add rax, 1049076260
cmovnbe ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
test dil, -58
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
not dx
xor dil, -23
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rbx]
dec rbx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
mul rdi
test eax, 1340292467
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
or bl, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
adc ax, 29444
dec al
xor rbx, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
