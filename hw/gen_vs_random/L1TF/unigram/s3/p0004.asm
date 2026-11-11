.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
bt rax, rcx
cmovp rbx, rdx
movzx rbx, dl
add dl, 43 # instrumentation
lea rdx, qword ptr [rax + rdi]
lea esi, qword ptr [rdi]
sub dx, 26
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
lea si, qword ptr [rbx]
btr edi, 16
and rsi, 98
add bl, -104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
setp al
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
