.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
test dl, dil
xor cl, 15
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or al, -24
test dl, al
or esi, -110
jmp .bb_0.2
.bb_0.2:
or dil, cl
jmp .bb_0.3
.bb_0.3:
or rcx, -17
test al, bl
or sil, bl
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
