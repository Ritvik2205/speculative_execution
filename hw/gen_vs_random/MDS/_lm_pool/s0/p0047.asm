.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and dl, cl
and cx, -2
or rbx, -77
test sil, -96
bt dx, si
xor sil, -15
xor sil, 94
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdx
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
or cl, dil
jmp .bb_0.3
.bb_0.3:
xor al, dl
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
xor sil, 110
and bl, bl
btc dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
