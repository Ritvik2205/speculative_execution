.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
xor bl, al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 35
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
