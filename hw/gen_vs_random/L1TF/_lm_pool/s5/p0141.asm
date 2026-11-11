.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add dil, 65 # instrumentation
cmovo rdi, rcx
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
movsx rsi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
