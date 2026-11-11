.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
adc cl, 97
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 16
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
add rax, 34
movzx edx, dx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and sil, al
or ax, -12775
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
sub edi, 96
cmp rbx, 50
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovle rcx, rdx
cmovns rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
cmovle dx, ax
imul dl
add cl, -42 # instrumentation
adc sil, dil
cmovnbe rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
sbb al, dl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
test cl, -89
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
cmovno ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
test rax, -344032571
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 81
add edi, ecx
sbb sil, sil
sub cl, dil
cmovz eax, edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
test edi, -1249897727
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
cmovnz ebx, edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
