.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and dil, bl
and ebx, 22
or di, 79
btc eax, 40
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and dl, bl
or si, -12
and dl, -73
test rdx, 63
test sil, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
