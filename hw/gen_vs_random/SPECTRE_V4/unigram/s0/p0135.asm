.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
test al, 114
neg rax
cmovl eax, ebx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
test bx, 24072
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 8
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
add sil, -74 # instrumentation
cmovnp rsi, rdi
movzx esi, dx
cmovnb esi, ecx
cmovp rax, rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 92
bt rcx, 189
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 29
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
sub rsi, -48
add rax, rbx
add al, al
sbb dil, 68
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
sub rdi, rdi
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
xor al, 99
cmovl bx, di
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
cmovbe rax, rcx
xchg rcx, rdx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
neg rdx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
test ebx, 65
add cl, 54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
movsx ax, sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
adc edi, -83
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
or rbx, -108
cmovbe rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
