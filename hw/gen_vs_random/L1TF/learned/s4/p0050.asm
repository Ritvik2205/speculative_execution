.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb al, al
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
add dl, dil
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 70
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
