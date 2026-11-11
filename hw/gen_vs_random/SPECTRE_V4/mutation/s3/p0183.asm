.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rsi, 26
adc eax, -1513455903
or edi, eax
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub al, 98
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
xor ax, 25554
movzx rax, cl
btc dx, 119
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and sil, -49
add al, 122 # instrumentation
cmovns edx, ebx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor al, 69
mov rbx, 9101099553822202722
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and eax, -37
sub eax, 2030845821
imul rdi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
add cl, 122 # instrumentation
cmovz rdx, rdi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
mov rax, -8696242625349627833
add dl, al
or cl, bl
neg bl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
xchg rcx, rax
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
add cl, -42 # instrumentation
adc dl, sil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
