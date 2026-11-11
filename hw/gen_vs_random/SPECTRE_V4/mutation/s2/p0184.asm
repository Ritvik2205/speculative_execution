.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
mul cx
btc rcx, rcx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
not dl
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
add cl, -58 # instrumentation
cmovnz ebx, eax
adc bl, 0
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmovno rsi, rax
cmovz rdi, rbx
cmovo rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
add ax, ax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmovbe rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
sbb bl, dl
mul ax
sub eax, -494922880
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovnb bx, bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
cmp bl, cl
cmovp edi, edx
cmovnp eax, ebx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
xchg bl, cl
movzx eax, al
add rbx, rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
