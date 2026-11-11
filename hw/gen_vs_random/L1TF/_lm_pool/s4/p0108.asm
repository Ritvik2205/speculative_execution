.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
xor eax, -2123070438
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add al, -102
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
