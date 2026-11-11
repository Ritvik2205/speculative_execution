.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
cmp edx, 99
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 86
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
cwde
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
xor cl, sil
lea rbx, qword ptr [rdx + rdi + 97]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
