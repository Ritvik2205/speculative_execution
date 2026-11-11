.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
add cl, 4
imul cx, bx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
btr rsi, rdx
and al, bl
add cl, 106 # instrumentation
cmovnp rdx, rax
adc ax, 50
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
bts esi, esi
test rsi, 96
mov dl, -34
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 19
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
cmovnbe ax, cx
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
or dl, 88
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and cl, 58
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xchg rdi, rax
imul ax, dx, 10
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 43
cmp ax, bx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
bts edi, 167
sub ecx, edi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
add ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
sub bl, 17
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
cmovnbe ax, dx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
