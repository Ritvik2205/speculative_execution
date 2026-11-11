.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test al, dl
xor cl, dl
and dil, dil
or dl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test dl, -95
or al, -17
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
