.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
setnp dil
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
add al, -72
sbb cl, sil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -62 # instrumentation
setnb dl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
neg ebx
cmp dl, dl
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
xor eax, -1721938664
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
