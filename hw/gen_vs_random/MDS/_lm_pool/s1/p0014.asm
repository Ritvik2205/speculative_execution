.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
xor dx, 70
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
xor al, 9
and ax, 31082
test dl, sil
jmp .bb_0.1
.bb_0.1:
xor al, 55
and cl, -111
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
