.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
cmovnb esi, ebx
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
imul cx, dx, 98
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
add dl, dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
sbb esi, ecx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
movzx edx, cx
not bx
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and ecx, edx
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
sub rcx, -74
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
test bl, -29
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
or edi, -78
sbb al, 54
test eax, -251558852
btc rdx, 178
adc bl, bl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and eax, -1056713114
test bx, dx
cmovl rbx, rsi
bt rdi, rdi
imul si, di, -97
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
sub ax, -1393
or eax, -646827727
and bl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
