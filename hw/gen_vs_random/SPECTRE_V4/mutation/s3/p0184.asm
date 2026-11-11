.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
add ax, ax
cmp edx, 4
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sub eax, 490935921
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
mul ax
not dl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
cmovbe rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
adc bl, -20
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
cmovno rsi, rax
cmovp edi, edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
movzx eax, al
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovz rdi, rbx
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
add cl, -58 # instrumentation
cmovnz ebx, eax
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
cmovnp eax, ebx
cmovo rdi, rbx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
add rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
xchg dl, dl
cmp bl, cl
btc rcx, rcx
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
cmovnb bx, bx
xchg bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
