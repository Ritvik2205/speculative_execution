.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdx, sil
movzx edi, dil
sbb esi, 5
mov al, 25
and dil, 96
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
movzx ax, dil
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
btc rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
add bx, 110
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 97
and dil, al
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 17
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
bt edi, 43
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 82
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
imul rdi
adc rdi, 82
cmovb cx, cx
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
imul sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
or ecx, edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
movzx bx, dl
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
btc rbx, 13
bts edi, 167
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add ecx, 55
btr rax, rsi
add cl, -21 # instrumentation
adc rdx, 33
add bl, 65 # instrumentation
cmovnp dx, ax
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
