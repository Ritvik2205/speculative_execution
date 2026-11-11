.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -82
lea eax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
lea rcx, qword ptr [rdx + rbx]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
