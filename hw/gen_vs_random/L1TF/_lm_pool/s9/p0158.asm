.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor ax, 27703
and rax, 1994547909
xor ax, 30996
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
jmp .bb_0.3
.bb_0.3:
cbw
and al, dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
