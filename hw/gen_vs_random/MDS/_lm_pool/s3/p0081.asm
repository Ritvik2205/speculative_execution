.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 14
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor rdx, -59
test sil, 17
or dil, -78
test al, 127
xor edi, 13
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and al, 49
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or rsi, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
