.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovns eax, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or rbx, -72
cmovnl bx, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or al, cl
or rax, 1461812833
cmovbe eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
bts di, 73
jmp .bb_0.1
.bb_0.1:
and bl, 49 # instrumentation
cmovbe rax, rcx
test cl, dl
not dl
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovns rdi, rdx
bts edi, 248
bt rax, rsi
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
xor rdi, -9
cmovle rsi, rbx
cmovnbe eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
