.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc si, 30
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
add sil, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
adc edx, 53
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 5
test al, al
movsx rax, bx
add dil, bl
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edx, qword ptr [rbx]
lea ax, qword ptr [rdx + rbx + 59]
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 62
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
add cl, 118 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
