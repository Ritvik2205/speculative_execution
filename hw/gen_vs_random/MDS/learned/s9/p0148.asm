.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or eax, 359647041
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
test bl, -14
bts rdx, 200
or rbx, -77
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 627810357
btc di, 164
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 99
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
