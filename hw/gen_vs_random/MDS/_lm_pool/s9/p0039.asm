.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
btr edx, eax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and si, -121
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
bt di, cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 98
or rax, 1461812833
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 57
and sil, 89
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
test dl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
