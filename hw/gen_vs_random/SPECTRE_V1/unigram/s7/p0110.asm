.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 63
cmovnle rsi, rdx
and cl, bl
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
test di, 47
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rdx]
lea rdi, qword ptr [rdx + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
lea cx, qword ptr [rcx + rax + 54]
lea ecx, qword ptr [rax + rax + 33]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and bl, al
add dil, 112 # instrumentation
adc dil, bl
add sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
