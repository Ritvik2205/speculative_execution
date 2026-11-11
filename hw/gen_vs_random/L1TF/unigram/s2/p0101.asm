.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, -79
btc rax, 14
sbb rsi, 17
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 95
setbe bl
test bx, si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 27
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
xor bx, 44
xchg ebx, ecx
sub di, 58
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
sbb rdx, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
