.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
xchg bl, cl
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul cx
sbb bl, dl
adc bl, 0
cmovnp eax, ebx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
cmp edx, 4
mul ax
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
cmovnb bx, bx
cmovp edi, edx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
add ax, ax
cmovbe rcx, rsi
btc rcx, rcx
not dl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
add rbx, rcx
cmovo rdi, rbx
cmovno rsi, rax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
cmovz rdi, rbx
xchg dl, dl
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
sub eax, 1050143384
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
movzx eax, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add cl, -58 # instrumentation
cmovnz ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
