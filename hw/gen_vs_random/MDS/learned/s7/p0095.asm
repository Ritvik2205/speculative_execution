.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
btr esi, ecx
xor ebx, 96
xor dl, -19
test cl, -86
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
jmp .bb_0.1
.bb_0.1:
or dl, cl
cmovnp rsi, rcx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
test sil, bl
test dil, -80
cmovno rax, rsi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 94
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
