.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi 
add al, 122 # instrumentation
cmovns edx, ebx 
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax] 
mov rbx, 9101099553822202722 
cmovno edi, edx 
neg bl 
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx] 
mov rax, -8696242625349627833 
add dl, al 
or cl, bl 
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61 
adc eax, -79 
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx] 
add cl, -42 # instrumentation
adc dl, sil 
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi] 
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125 
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx 
xchg rcx, rax 
xor ax, 28088 
xor al, -2 
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx 
or edi, eax 
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi] 
cmp bl, al 
sub eax, -523763262 
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx] 
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx] 
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi 
movzx rax, cl 
sub rsi, 26 
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi] 
and eax, -37 
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2 
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi] 
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97 
and sil, -49 
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx] 
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx] 
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0 
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl 
add cl, 122 # instrumentation
cmovz rdx, rdi 
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73 
btc dx, 16 
sub al, 99 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
