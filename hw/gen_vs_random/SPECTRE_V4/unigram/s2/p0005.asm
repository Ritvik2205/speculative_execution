.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rsi, rbx
and di, -65
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
xor dil, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
add dil, -61
xchg dil, dil
mov bl, al
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
mul rdi
bts cx, ax
cmp edi, 3
cmovbe dx, bx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rax], eax
xor ax, -6064
cmovnb dx, bx
and rbx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rbx]
sub bl, dl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmp si, 109
mov ecx, -405458789
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
movzx eax, dl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
movsx esi, al
cmovl ax, ax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovnb ebx, edi
xor dl, -123
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
