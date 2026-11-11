.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
cmovns bx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test esi, 425331143
and rax, 4
xor sil, al
test dil, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or sil, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
