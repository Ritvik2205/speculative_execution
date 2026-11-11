.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
test al, bl
xor rsi, -117
or cl, 7
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
xor dil, 81
test sil, -55
jmp .bb_0.1
.bb_0.1:
bt rdx, 83
or cl, 30
xor dl, bl
btr rsi, 146
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 5
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
