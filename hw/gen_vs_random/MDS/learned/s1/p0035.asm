.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
bt si, dx
or dil, 16
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
xor sil, -15
test edx, -1561252782
jmp .bb_0.1
.bb_0.1:
xor sil, -126
xor rsi, -117
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test cl, -123
btc si, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
