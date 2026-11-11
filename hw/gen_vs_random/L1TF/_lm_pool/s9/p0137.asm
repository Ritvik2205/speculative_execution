.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
or dil, al
and dl, -49
sbb dil, 50
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and si, 92
xor cl, bl
cmovle rdx, rax
cmovnle rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
