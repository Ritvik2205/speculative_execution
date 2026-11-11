.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -58 # instrumentation
cmovnz ebx, eax
cmovnb bx, bx
cmovz rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
btc rcx, rcx
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
cmovnp eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmovo rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
xchg bl, cl
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmovbe rcx, rsi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, 714283065
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, 13
test dl, cl
mov bl, 29
adc bl, cl
cmp ebx, -27
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, 1307735127
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 1914398062
cmovnz eax, eax
sbb al, 102
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
