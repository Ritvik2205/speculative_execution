.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, ecx
add sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
test eax, 1880179600
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
movzx di, dil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 90
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
or sil, cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and di, 95
test edi, -1249897727
test ecx, 81
cmovnbe rcx, rax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
test dl, 19
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
mul edx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
adc dl, sil
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 33
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
mov rsi, 57
add dil, dl
cmp bx, 34
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
dec dl
cmovb eax, ecx
test sil, al
btc cx, 240
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
add cl, 63
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
mul rbx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 90
cmovle ax, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
xor ax, 28088
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
mov rdx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
