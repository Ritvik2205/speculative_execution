.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or cl, 6
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and edi, 23
or cl, -77
cmovl ax, di
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
or al, -22
xor cl, cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
xor al, dil
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and al, al
and cl, 91 # instrumentation
cmovle rbx, rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], di
bts ebx, 205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
