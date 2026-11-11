.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and di, 100
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 54
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
add edx, 56
sbb ecx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
