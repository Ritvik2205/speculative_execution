.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
or rax, 1461812833
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor dl, al
or rbx, -77
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
test al, -81
test dl, -95
test sil, bl
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
