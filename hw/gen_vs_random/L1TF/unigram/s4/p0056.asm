.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 19
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
and edi, esi
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 23
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
xchg ax, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add dl, -7 # instrumentation
cwd
or ecx, 7
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
test cx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
