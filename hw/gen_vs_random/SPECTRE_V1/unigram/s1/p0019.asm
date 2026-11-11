.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
test al, 70
movsx bx, dil
cmp bl, cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
add sil, 87 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
movzx ax, cl
test ecx, -1134698714
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmovl rdi, rbx
setnb dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
