.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xchg dl, dl
sbb bl, dl
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
movzx eax, al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
add ax, ax
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
btc rcx, rcx
cmovbe rcx, rsi
cmovp edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
add cl, -58 # instrumentation
cmovnz ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
mul ax
cmovno rsi, rax
sub eax, 1050143384
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
cmovnb bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
xchg bl, cl
cmovz rdi, rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
cmp bl, cl
adc bl, -20
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
cmovo rdi, rbx
not dl
add rbx, rcx
cmovnp eax, ebx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
