.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rsi, -48
add dl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
test al, 115
add cl, -119 # instrumentation
sbb ebx, 44
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
inc sil
sub cx, -114
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 42
and dl, -53
and edi, -102
and edx, esi
movzx bx, sil
cmovl rcx, rax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
imul cx
sbb dx, 2
adc rcx, 57
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 20
xchg rax, rbx
bswap rsi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
cmovbe si, di
sub rcx, 126
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 80
not bx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
cmovnbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
test dl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add dl, 40 # instrumentation
cmovnp rcx, rdx
test ax, -6841
bt eax, ebx
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
movzx rax, di
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
cmp edx, eax
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
