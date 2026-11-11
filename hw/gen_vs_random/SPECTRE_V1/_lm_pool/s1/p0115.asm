.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add sil, sil
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 18
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
xor al, cl
bt edx, ecx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
add edx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
