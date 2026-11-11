.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 36
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 99
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
inc ax
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
btr rbx, 132
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdi]
add cl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ecx
setle dl
neg rsi
xor cl, -103
add al, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
add dil, 28 # instrumentation
setnz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
