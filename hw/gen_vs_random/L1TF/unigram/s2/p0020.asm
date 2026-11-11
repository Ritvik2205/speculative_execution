.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
sbb sil, 19
btc rax, 14
sbb rsi, 12
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 33
setbe bl
test bx, si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 83
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
xor bx, 37
xchg ebx, ecx
sub di, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
