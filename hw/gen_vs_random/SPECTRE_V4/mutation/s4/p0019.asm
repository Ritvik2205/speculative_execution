.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 135
xor esi, -82
sub bl, 56
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and al, -124
neg edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, bl
test dx, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmp rax, -2096157586
test dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub ax, -1908
btc rdx, 178
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
cmovno rsi, rax
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sub eax, -529389957
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
cmovp edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmp bl, cl
add rbx, rcx
adc bl, 127
movzx eax, al
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
add ax, ax
mul ax
not dl
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
