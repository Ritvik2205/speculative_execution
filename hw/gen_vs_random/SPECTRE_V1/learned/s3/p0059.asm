.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and dl, -111
sbb cl, cl
test rbx, 44
cmp al, cl
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
adc dil, 39
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
