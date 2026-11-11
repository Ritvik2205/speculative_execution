.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 65
cmovbe ecx, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and dl, 91 # instrumentation
cmovnle edx, edx
bts rsi, rcx
btc rsi, 105
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
cmovb rax, rdi
and cl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
or eax, ecx
and bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
cmovnz rdi, rdx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 53
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 28
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
btc rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
