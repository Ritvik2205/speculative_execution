.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
adc eax, -1513455903
xor al, 56
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
btc dx, 119
and eax, -24
imul rdi
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and sil, -49
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sub al, 98
sub rsi, 26
add al, 122 # instrumentation
cmovns edx, ebx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
movzx rax, cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or edi, eax
cmovno edi, edx
add cl, -42 # instrumentation
adc dl, sil
mov rbx, 9101099553822202722
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
sub eax, 2
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rax, -8696242625349627833
add dl, al
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or cl, bl
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
neg bl
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
xchg rcx, rax
add cl, 122 # instrumentation
cmovz rdx, rdi
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
