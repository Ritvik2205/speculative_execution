.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx + rcx + 65]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 37
add dl, bl
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
add dl, 41 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 87
movsx rbx, al
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 53
add sil, -42 # instrumentation
lea edx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
or cl, 97
lea ebx, qword ptr [rcx]
cmp ax, 23607
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
