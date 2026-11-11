.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
or al, -22
jmp .bb_0.2
.bb_0.2:
xor di, 93
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, bl
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
