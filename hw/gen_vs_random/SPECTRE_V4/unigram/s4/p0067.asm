.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb sil, cl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
cmp rbx, 76
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
sbb eax, -1688332460
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
not rax
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
movsx rax, bx
cmovp edi, edi
cmp bx, dx
sbb esi, 79
cmovnbe cx, di
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 69
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, edi
cmovnb bx, bx
cmovs rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
bt edi, 77
sub al, 119
add rbx, rdx
imul bl
cmp rax, -1102558854
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
imul cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
bts rsi, rsi
cmovb rdx, rax
or dil, cl
inc eax
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
or rax, rcx
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
neg bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
