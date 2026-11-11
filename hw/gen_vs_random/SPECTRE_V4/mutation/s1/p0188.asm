.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
cmovno rsi, rax
cmovbe rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
mul ax
add ax, ax
cmovnp eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
cmp edx, 4
cmovp edi, edx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmovo rdi, rbx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
movzx eax, al
cmovz rdi, rbx
and rcx, 0b1111111111111 # instrumentation
mul cx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
not dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmovnb bx, bx
xchg bl, cl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
xchg dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
btc rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmp bl, cl
add cl, -58 # instrumentation
cmovnz ebx, eax
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
sbb bl, dl
add rbx, rcx
adc bl, 79
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
sub eax, 490935921
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
