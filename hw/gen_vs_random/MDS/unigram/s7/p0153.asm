.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
btc rcx, 12
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and dil, dil
cmovns ecx, ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and cl, -23 # instrumentation
cmovno ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
not dl
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
or dl, 85
test ecx, -1843375753
cmovnp rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
