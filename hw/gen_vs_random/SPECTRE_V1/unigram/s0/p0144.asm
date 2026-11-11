.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul al
inc rdx
and bx, -118
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
xchg cl, cl
setnle dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rsi, rsi
xor bl, bl
setnb bl
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
