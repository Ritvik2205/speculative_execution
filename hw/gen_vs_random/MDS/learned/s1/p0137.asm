.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 34
test al, dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor di, 93
test dl, al
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
or bl, bl
xor al, dl
and dl, bl
btr dx, ax
test bl, -9
and edi, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
