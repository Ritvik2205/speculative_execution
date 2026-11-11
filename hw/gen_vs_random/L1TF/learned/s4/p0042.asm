.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
sub dil, 87
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rdx, 88
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
add ax, 1313
xchg al, dil
and rax, -109
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
