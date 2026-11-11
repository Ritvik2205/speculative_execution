.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp eax, ebx
add cl, -58 # instrumentation
cmovnz ebx, eax
cmp edx, 4
sub eax, -1627558845
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
adc bl, 79
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
mul ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
sbb bl, dl
btc rcx, rcx
not dl
add ax, ax
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
xchg dl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmovnb bx, bx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
mul cx
movzx eax, al
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
cmovp edi, edx
cmovz rdi, rbx
cmovo rdi, rbx
xchg bl, cl
add rbx, rcx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
cmovbe rcx, rsi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovno rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
