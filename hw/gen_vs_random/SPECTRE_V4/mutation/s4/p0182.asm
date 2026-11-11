.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and eax, -24
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and sil, -49
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
or edi, eax
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
mov rbx, 9101099553822202722
add al, 122 # instrumentation
cmovns edx, ebx
sub rsi, 26
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
sub al, 98
movzx rax, cl
xor al, 59
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
add cl, -42 # instrumentation
adc dl, sil
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
add dl, al
xor ax, 28088
add cl, 122 # instrumentation
cmovz rdx, rdi
btc dx, 119
imul rdi
neg bl
mov rax, -8696242625349627833
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
adc eax, -79
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
sub eax, -523763262
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
