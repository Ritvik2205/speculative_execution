.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, -72
bts di, 73
cmovbe eax, ebx
cmovns eax, edi
or rax, 302048971
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
cmovnl bx, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or al, cl
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 1250429750
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
