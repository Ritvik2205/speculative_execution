.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test bl, cl
and bx, 75
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.1
.bb_0.1:
or eax, ecx
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
test dl, cl
and cl, -19
or dl, cl
and dl, cl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and cl, -19
xor al, -4
not dil
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
