.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 93
btc rax, rcx
bts cx, 58
btc rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
xor cl, 122
and bl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 9
xor cl, 93
jmp .bb_0.1
.bb_0.1:
and dil, 21
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and cl, -49 # instrumentation
cmovno cx, di
cmovo dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
or al, -48
or ebx, 66
cmovb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
