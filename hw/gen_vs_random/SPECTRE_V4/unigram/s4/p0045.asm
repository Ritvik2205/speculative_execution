.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
or rdx, 1
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 50
movsx si, al
imul di
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 30
add rdx, 27
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
mul rbx
cmovle rsi, rbx
bt edi, 233
bts ebx, 197
test dl, sil
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
mov rsi, rdi
cmovnbe edx, esi
cmovp eax, ecx
cmovl ax, cx
and bl, -119
bt rbx, rcx
add cl, -33 # instrumentation
not sil
cmovnb rdi, rbx
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
add bl, bl
cmovz bx, di
movzx ebx, dl
cmovl ecx, eax
adc cx, 51
movzx ebx, bl
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
sbb edi, 107
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
movsx eax, ax
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
mov edx, -950755477
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
not rax
xchg dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
