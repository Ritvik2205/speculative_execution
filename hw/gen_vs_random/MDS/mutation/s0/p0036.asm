.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe eax, ebx
bts di, 73
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovns eax, edi
or rbx, -77
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or al, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
cmovnl bx, cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
or rax, -141551502
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rax, 452940266
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
