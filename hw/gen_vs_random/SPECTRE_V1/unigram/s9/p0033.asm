.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
adc al, al
add bl, -27 # instrumentation
setle bl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 82
cmp sil, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo rax, rax
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
not dx
or ax, 19104
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
add al, 13 # instrumentation
setns al
add al, 40 # instrumentation
btc rax, rax
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
add rcx, 23
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
