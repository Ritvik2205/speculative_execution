.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
lea rsi, qword ptr [rdx + rax + 5]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 75
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 71
add cl, al
and cl, 76
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
