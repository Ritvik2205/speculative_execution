.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
test dx, 16353
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdi], dx
bt rcx, rdi
or rdx, -109
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or rax, rcx
not rax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
xor di, di
xor dil, -70
or dl, 85
cmovnz bx, ax
and dil, 49 # instrumentation
cmovp rcx, rdi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
not sil
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
