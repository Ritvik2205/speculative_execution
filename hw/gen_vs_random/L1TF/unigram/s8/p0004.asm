.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -87 # instrumentation
cmovnle rdi, rbx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
inc sil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
bt di, bx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovno ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
lea ax, qword ptr [rdi + rcx]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx], 92
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
lea rdi, qword ptr [rdx]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
