.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test dil, sil
xor al, dil
inc cl
test rdi, 21
not sil
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and ecx, -104
and sil, bl
test al, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and ebx, 76
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
