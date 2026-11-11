.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and ax, dx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
or sil, -8
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 15
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and bl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
bt edi, 254
bt cx, di
cmovno edx, ebx
test cl, sil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
