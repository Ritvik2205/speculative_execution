.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, bx
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
or dil, 80
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 37
bt edx, 84
cmp al, dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
