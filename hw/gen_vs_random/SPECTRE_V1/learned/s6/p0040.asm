.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
lea esi, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
cmp bl, cl
xor sil, -33
btc ax, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rcx + rax + 15]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
