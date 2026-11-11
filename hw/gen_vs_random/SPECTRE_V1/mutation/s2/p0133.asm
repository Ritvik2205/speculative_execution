.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1716718453
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
xor al, -19
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
add cl, al
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
loope .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
mul rcx
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
add rsi, -60
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
lea rdx, qword ptr [rbx + rax]
jmp .bb_0.2
.bb_0.2:
add bl, 97 # instrumentation
cmovnb cx, ax
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
movzx esi, dx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
