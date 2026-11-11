.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rcx + 24]
and sil, cl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 85
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle eax, edx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
