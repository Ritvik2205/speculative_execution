.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
or al, cl
or rbx, -72
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
cmovnl bx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmovbe eax, ebx
cmovns eax, edi
bts di, 73
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or rax, -689609688
jmp .bb_0.1
.bb_0.1:
xor dl, 34
and rax, 1886208862
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
