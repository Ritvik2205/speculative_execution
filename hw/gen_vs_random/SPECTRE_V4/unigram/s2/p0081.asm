.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
xchg eax, ebx
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
cmovle di, cx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 20
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
sub rcx, 69
xor dil, 92
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 64
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 8
movsx edx, sil
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], eax
xor si, 16
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
test dx, 93
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or ax, di
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
cmovnl rcx, rbx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
movzx rax, dl
sbb bx, 79
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
cmovs dx, di
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
xchg ebx, esi
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and dil, al
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
sbb edi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
