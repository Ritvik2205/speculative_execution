.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
xor al, 78
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1716718453
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
add cl, al
loope .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
lea rdx, qword ptr [rbx + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
mul rcx
add rsi, -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
