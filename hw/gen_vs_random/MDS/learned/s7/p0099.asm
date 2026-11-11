.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
or al, al
and ax, 27170
xor cx, -18
jmp .bb_0.1
.bb_0.1:
xor esi, 67
lea rcx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or dx, 125
test al, 127
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and di, 91
or al, 25
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
test bl, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
