.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, -1513455903
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
add cl, 122 # instrumentation
cmovz rdx, rdi
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and eax, -37
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
sub rsi, 26
xor ax, 25554
neg bl
xchg rcx, rax
imul rdi
and sil, -49
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
cmp bl, al
sub al, 99
add al, 122 # instrumentation
cmovns edx, ebx
add dl, al
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
xor al, 59
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
mov rax, -8696242625349627833
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
movzx rax, cl
or edi, eax
sub eax, -523763262
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
btc dx, 119
mov rbx, 9101099553822202722
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
