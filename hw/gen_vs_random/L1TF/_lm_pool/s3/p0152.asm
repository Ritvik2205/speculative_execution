.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and bl, bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 59
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 57
test ecx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
