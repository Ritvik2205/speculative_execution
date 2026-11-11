.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
lea ebx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
sbb ax, bx
bt esi, ecx
and bl, dl
xor dil, cl
and rdi, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
