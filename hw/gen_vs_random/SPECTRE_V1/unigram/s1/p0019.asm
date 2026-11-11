.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
add dil, -101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
add al, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
cmp sil, 25
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
xor cl, 78
sub cl, sil
lea rdx, qword ptr [rbx + rax + 4]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
add al, -53 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 63
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
