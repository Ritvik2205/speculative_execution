.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and bl, sil
test al, -104
jmp .bb_0.1
.bb_0.1:
xchg eax, ecx
add sil, dil
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdi + rbx + 89]
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
