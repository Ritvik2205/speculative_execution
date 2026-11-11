.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rdi
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
neg edx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
add cl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
movsx eax, al
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
add dl, -127 # instrumentation
setp al
cwd
xor dil, -37
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
