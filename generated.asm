.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovz ebx, eax 
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl 
sub rax, -1190510454 
mov dl, al 
adc cl, al 
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax] 
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl 
and cl, 22 
adc al, 6 
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax 
and rcx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rcx] 
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil 
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx] 
sub al, bl 
sbb eax, 91 
imul rax, rcx, 0 
or dl, 1 # instrumentation
add dl, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rcx] 
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax] 
test bl, dl 
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax 
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax] 
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 112 
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 5 
sub al, 41 
or cl, dl 
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1729993047 
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi] 
imul eax, ecx 
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl 
cmovle rdi, rdx 
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx] 
inc sil 
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx] 
imul rax 
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx] 
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil 
xor sil, 33 
bts rax, rbx 
inc cl 
adc ax, -30957 
btr cx, bx 
mov dl, -49 
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di 
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], dx 
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], -82 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
