.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rcx, rdi
xor si, 63
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rax, 6
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 40
movsx rbx, dl
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
cmovnp rcx, rbx
mov rax, -8696242625349627833
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmp edi, -104
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 69
cmovnz dx, di
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
add di, di
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
adc al, -58
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmovo rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 86
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 20
cmovnbe dx, cx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
sbb bx, 35
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
movzx rcx, dil
test edx, ebx
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
test ecx, 1
xor al, bl
test edx, 573099753
test dl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
sbb sil, 108
test sil, 3
dec cx
sub bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
