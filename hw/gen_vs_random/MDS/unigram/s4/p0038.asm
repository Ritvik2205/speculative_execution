.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 67
cmovo rbx, rcx
and al, 2 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovns ecx, eax
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
or bl, cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
or sil, cl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rax, rdi
and bl, -28 # instrumentation
cmovl rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
not bl
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
cmovnp rdx, rdi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
