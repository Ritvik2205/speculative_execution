.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, 46
setns bl
lea di, qword ptr [rdx + rdx + 9]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
setnl cl
test rax, -1638758413
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
or cl, -98
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
