.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub rax, -132886581
imul dil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
imul ax, bx
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
xor eax, 1034314125
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
xor eax, 1034314125
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
