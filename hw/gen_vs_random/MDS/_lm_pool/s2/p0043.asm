.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
or dil, sil
xor sil, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
test bl, 65
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and al, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 55
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
