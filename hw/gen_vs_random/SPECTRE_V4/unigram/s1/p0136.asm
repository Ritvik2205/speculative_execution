.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
and dil, sil
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 82
btc ebx, edx
mov rdx, -3284511739993892328
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
movzx edi, ax
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
add cl, 42 # instrumentation
movsx rbx, cl
sub cl, 92
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
or ecx, 102
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
dec bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
sbb dl, dil
cmovl ax, cx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
mov cl, dil
btr rax, rdx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 45
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
sub rbx, rbx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
movsx ebx, ax
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
cmp rbx, -66
cmp sil, dl
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
or ebx, -78
xchg eax, ecx
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
and bl, dil
bts bx, 102
mov cl, dl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test dil, al
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 80
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
