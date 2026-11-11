.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 69
not ecx
xor cl, bl
add rdx, rbx
lea rax, qword ptr [rdi + rdi + 2]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and dx, 1
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
test dl, 19
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
cmovle rbx, rdx
sub sil, -36
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
