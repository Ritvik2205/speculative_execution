.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rax, 376589024
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
neg rcx
movzx ecx, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
bts di, 230
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
sub bl, cl
cmovnl edi, esi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
test al, bl
sub ax, 124
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
add dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
cmovnl rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
