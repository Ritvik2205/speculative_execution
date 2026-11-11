.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
sub dil, -70
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
lea ebx, qword ptr [rcx]
xor rax, rdx
add dil, -7
xor dl, al
add dl, -1
and dil, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
