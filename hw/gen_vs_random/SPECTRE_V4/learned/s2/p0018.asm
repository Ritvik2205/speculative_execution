.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 123
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 102
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -19255
test edx, 573099753
imul esi, edx, 69
movsx rdx, dil
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
mul cl
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
adc rbx, 20
adc al, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
sbb di, -76
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 16
mov rdx, 38
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
test bl, 24
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
and rsi, 19
mov rsi, 21
add rdi, rdx
or ebx, esi
imul cl
mul dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
