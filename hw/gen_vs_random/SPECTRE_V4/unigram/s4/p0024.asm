.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
cmovz cx, dx
adc dil, al
sub rdi, -52
add eax, ebx
inc dil
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 9
sbb rax, 59
cmovbe esi, esi
sbb esi, eax
and eax, -1948401947
sub bx, 24
xor rdi, -72
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
test rsi, rsi
cmovnl ax, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
movzx rcx, bx
cmovns ax, di
btc bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 27
test cl, 78
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
or rbx, -107
and sil, cl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
sub rbx, rbx
adc edi, -83
test eax, 1947430392
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
movsx esi, dl
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and al, -1
sub si, -92
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
