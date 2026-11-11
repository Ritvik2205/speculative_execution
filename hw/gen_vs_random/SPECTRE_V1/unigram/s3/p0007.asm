.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 38 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
or al, al
or edx, 6
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and dil, 98
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 47
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
