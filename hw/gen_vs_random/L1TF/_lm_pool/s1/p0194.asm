.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
setno al
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor al, 38
inc cl
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
test al, -70
btc si, dx
add ebx, 2
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
