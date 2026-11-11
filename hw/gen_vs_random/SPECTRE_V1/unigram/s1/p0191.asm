.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 48
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
bt eax, edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, di
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 40
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 91
cmovp bx, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
