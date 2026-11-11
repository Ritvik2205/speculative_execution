.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, 67
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
cmovl di, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
or cl, -77
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 18
btc dx, 67
and dl, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
cmovno ax, di
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
xor sil, -14
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
