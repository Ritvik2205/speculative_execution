.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
adc bl, bl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
movzx dx, dl
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
add dl, 92 # instrumentation
cmovnl rdi, rsi
test bx, dx
or edi, -78
sub rcx, -99
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
cmovnb esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
test bl, 78
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and eax, -1237519395
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
or eax, -612395655
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
sub ax, 25338
cmovl rbx, rsi
sbb al, 57
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
imul cx, dx, 98
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt rdi, rdi
imul si, di, -97
btc rdx, 130
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and bl, 76
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
add dl, dl
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
sbb esi, ecx
or al, al
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and ecx, edx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
movzx edx, cx
not bx
test eax, -31785616
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
