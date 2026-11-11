.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
setno bl
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
or al, -57
and bl, dil
bts eax, 232
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 61
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
or bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
