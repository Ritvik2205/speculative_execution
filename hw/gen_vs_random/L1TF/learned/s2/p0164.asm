.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
lea rax, qword ptr [rcx]
btc bx, cx
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
lea cx, qword ptr [rdi + rbx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
