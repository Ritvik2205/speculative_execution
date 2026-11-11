.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 96
bts edx, ebx
xor dil, 44
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
test dl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and al, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and al, al
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 25
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 61
cmovnp edx, ebx
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 44
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
xor eax, 1170472196
bt cx, 60
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
