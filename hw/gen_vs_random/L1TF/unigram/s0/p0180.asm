.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rax
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edi
mul rdx
add al, -57 # instrumentation
cmovo rdi, rcx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
jmp .bb_0.1
.bb_0.1:
bt di, ax
mul al
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
test al, -32
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sbb bx, bx
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
add al, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
