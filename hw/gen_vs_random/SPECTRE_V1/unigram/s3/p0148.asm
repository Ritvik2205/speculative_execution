.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 32
test cl, -33
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
lea rax, qword ptr [rdx]
and rsi, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 4
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 8
lea rdx, qword ptr [rsi + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
lea ebx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
