.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
sub al, -47
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
test edi, 98
jmp .bb_0.1
.bb_0.1:
cwd
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
add al, 74
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
