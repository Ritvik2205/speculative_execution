.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 76
cmp dx, cx
sbb dil, -106
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
or dl, 41
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
test esi, 95
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
or ebx, -124
btc bx, si
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
