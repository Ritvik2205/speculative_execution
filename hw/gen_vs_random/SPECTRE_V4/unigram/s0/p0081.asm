.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -2098143765
neg cx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
adc rax, 310915511
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
neg al
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
cmovs edi, ecx
and ebx, edx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 10
add cl, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 36
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edi
sub edi, edx
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
inc sil
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
mul ax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
imul ebx, ebx
add esi, 76
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
btc rbx, 52
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
cmovnz rcx, rdi
dec dl
bts rdi, rcx
mov rcx, rdi
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
xor dx, 7
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 67
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
xor cl, al
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
neg rdi
add al, 116 # instrumentation
cmovns ebx, eax
add bl, 127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
