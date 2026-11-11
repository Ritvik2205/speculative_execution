.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor dl, bl
and bl, 68
xor rax, -91
and cl, -71
or ax, -4210
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rcx
jmp .bb_0.2
.bb_0.2:
and si, ax
not al
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
test esi, 425331143
or al, 30
xor bl, al
xor dil, cl
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
