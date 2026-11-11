.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle di, di
cmovns esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
lea rsi, qword ptr [rbx]
btr edx, 7
add dl, -123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
add sil, sil
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
lea edi, qword ptr [rdx + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
lea rcx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add al, -57 # instrumentation
cmovo rsi, rdi
sbb dil, 25
xchg di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
