.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
dec ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 88
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
add dl, 110 # instrumentation
movsx ax, dl
sub al, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 16
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 9
or cl, 35
cmovns rdx, rbx
imul dx, si
movzx ebx, al
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 69
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 38
xor edx, 91
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and si, 68
cmp ax, -15409
not ax
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
cmovo rdi, rcx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
movzx rax, si
movzx dx, al
movzx rbx, si
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
add rdi, rax
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 59
bts rsi, rcx
btc bx, ax
mov rcx, rsi
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
cmovle eax, ecx
add esi, -5
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 63
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
sub bl, al
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
