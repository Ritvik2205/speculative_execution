.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
lea rdi, qword ptr [rdx + rdx + 23]
sbb eax, 1830317432
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xchg al, sil
cmovnle rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
sub rax, -1628299544
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
