.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi 
lfence
add al, 122 # instrumentation
lfence
cmovns edx, ebx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul dword ptr [r14 + rax] 
lfence
mov rbx, 9101099553822202722 
lfence
cmovno edi, edx 
lfence
neg bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and dl, byte ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rdx] 
lfence
mov rax, -8696242625349627833 
lfence
add dl, al 
lfence
or cl, bl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sub word ptr [r14 + rax], 61 
lfence
adc eax, -79 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and bx, word ptr [r14 + rbx] 
lfence
add cl, -42 # instrumentation
lfence
adc dl, sil 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul dword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rsi], 125 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rsi], rdx 
lfence
xchg rcx, rax 
lfence
xor ax, 28088 
lfence
xor al, -2 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and cx, 0b111 # instrumentation
lfence
btr word ptr [r14 + rdi], cx 
lfence
or edi, eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and rdi, qword ptr [r14 + rsi] 
lfence
cmp bl, al 
lfence
sub eax, -523763262 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rcx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or dl, byte ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub bl, byte ptr [r14 + rdx] 
lfence
or edi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf eax, edi 
lfence
movzx rax, cl 
lfence
sub rsi, 26 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs dx, word ptr [r14 + rsi] 
lfence
and eax, -37 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock btc dword ptr [r14 + rcx], 2 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx rax, word ptr [r14 + rdi] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rax], 97 
lfence
and sil, -49 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovbe si, word ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnbe dx, word ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock bts qword ptr [r14 + rax], 0 
lfence
or cl, 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div cl 
lfence
add cl, 122 # instrumentation
lfence
cmovz rdx, rdi 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rax], 73 
lfence
btc dx, 16 
lfence
sub al, 99 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
