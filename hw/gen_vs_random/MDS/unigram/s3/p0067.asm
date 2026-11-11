.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 31
and rdx, rax
btc ebx, 149
and al, -40 # instrumentation
cmovp eax, eax
or dx, 125
and dl, 66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
or bl, dil
and ebx, eax
xor dil, dil
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 23
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
or cl, dil
and dx, 60
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 50
btr rax, 56
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf di, di
cmovp bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
