.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
add cl, -21 # instrumentation
adc rdi, 5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 52
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
adc al, bl
movzx edx, sil
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test bl, dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
not cl
add ax, -15653
bswap edi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
cmovo rax, rdi
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
xor edi, eax
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
not rax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 32
add cl, 122 # instrumentation
cmovz rdx, rcx
xchg rcx, rbx
cmovnz ecx, eax
test esi, 84
cmovnl rax, rsi
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 3
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and al, -127
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
add edi, esi
adc rdi, 3
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
adc al, bl
sbb cl, 19
cmp bl, bl
or al, dil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
