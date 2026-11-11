.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
and bl, 26
mov sil, al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
cmovnbe rax, rsi
neg dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
dec rdx
bt ebx, ecx
cmovnl rdi, rcx
bts rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 17
adc edx, 16
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 27
dec bl
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
imul cl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmp al, 81
cmovnle ax, bx
movzx rbx, dl
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
xor rax, 72
xchg rdx, rdi
cmovs si, si
xchg eax, edx
add sil, sil
xchg dil, bl
inc edx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
bt ecx, 71
cmovle si, si
cmovnle ax, si
imul eax
cmovnle di, dx
cmovnp rax, rsi
sub rax, -701741274
inc si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
