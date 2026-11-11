.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
movzx edx, cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and eax, -1056713114
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
movzx dx, dl
test bx, dx
test eax, -251558852
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or edi, -78
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
or eax, 1001462340
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
sub ax, -13057
test bl, -91
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
bt rdi, rdi
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
movsx eax, di
sbb ebx, esi
add bl, bl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovle rax, rsi
or bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
cmovo edx, edx
test cl, -31
add eax, 1017938146
test bl, dl
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
sbb al, 43
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
mul dil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
test ax, -6584
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
