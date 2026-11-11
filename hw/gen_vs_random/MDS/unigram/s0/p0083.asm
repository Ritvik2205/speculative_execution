.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz edi, eax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
bt rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
bts rax, rdx
and cl, 8 # instrumentation
cmovz rsi, rcx
btc rsi, 105
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovp edx, edx
and rsi, 8
or ax, -4210
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 84
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
test edi, -1252846009
btc rsi, 105
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
