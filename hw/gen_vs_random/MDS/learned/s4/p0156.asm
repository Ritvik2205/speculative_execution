.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, 66
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
or rax, -1523798580
xor al, cl
test al, -7
or dil, -78
or al, cl
and al, 75
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rcx, 107
not bl
test dl, al
xor bl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
