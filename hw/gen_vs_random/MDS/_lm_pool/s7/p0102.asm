.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and dl, -73
and dil, -62
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
btc si, 99
xor bl, cl
jmp .bb_0.1
.bb_0.1:
or bl, -54
or al, 74
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
