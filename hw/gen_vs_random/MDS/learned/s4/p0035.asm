.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 25
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
not dl
jmp .bb_0.1
.bb_0.1:
xor al, -89
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
