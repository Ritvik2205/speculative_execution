.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, si
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
add dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
adc dil, 59
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 93
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
sub cl, dil
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
lea esi, qword ptr [rdi]
test cx, -17886
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
