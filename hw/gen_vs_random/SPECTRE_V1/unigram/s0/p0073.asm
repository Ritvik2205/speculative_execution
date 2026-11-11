.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ax, ax
lea bx, qword ptr [rcx + rsi]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
add dl, 47
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
movzx dx, al
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
lea di, qword ptr [rdx + rax + 9]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
add dil, 118 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
