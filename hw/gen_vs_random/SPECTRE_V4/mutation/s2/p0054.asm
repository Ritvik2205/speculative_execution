.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
xor al, 102
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and eax, -37
add cl, -42 # instrumentation
adc dl, sil
mov rbx, 9101099553822202722
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
neg bl
sub rsi, 26
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
cmovno edi, edx
or edi, eax
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
sub eax, 2030845821
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
btc dx, 119
xchg rcx, rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
or cl, bl
add dl, al
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and sil, -49
cmp bl, al
add cl, 122 # instrumentation
cmovz rdx, rdi
sub al, 119
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
xor ax, 28088
adc eax, -79
movzx rax, cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
add al, 122 # instrumentation
cmovns edx, ebx
mov rax, -8696242625349627833
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
