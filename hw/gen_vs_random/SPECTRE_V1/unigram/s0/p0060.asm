.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
or dl, cl
sbb cl, -122
and rsi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rsi]
lea bx, qword ptr [rsi + rdi + 81]
bt edi, ebx
add dl, 35 # instrumentation
cmovnz rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
setno bl
cmovnbe rsi, rcx
lea rsi, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 44
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
