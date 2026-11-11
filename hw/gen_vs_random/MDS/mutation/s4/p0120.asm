.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe eax, ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or rbx, -72
or al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
bts di, 37
cmovns eax, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
cmovnl bx, cx
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or rax, -689609688
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
xor dl, -19
and rax, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
