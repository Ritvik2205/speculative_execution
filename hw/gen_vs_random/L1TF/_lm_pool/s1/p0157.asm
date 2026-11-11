.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and bl, 89
xor al, 16
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and al, al
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
