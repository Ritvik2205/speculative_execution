.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add al, 122 # instrumentation
cmovns edx, ebx
btc dx, 16
or edi, eax
add dl, al
mov rbx, 9101099553822202722
sub rsi, 26
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add cl, 122 # instrumentation
cmovz rdx, rdi
adc eax, -1513455903
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
sub al, 99
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sub eax, 2030845821
xor ax, 25554
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
xor al, -2
cmp bl, al
neg bl
cmovno edi, edx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or cl, bl
movzx rax, cl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
xchg rcx, rax
add cl, -42 # instrumentation
adc dl, sil
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and eax, -24
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
mov rax, -8696242625349627833
imul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
