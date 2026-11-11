.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
bts rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
test bx, 25542
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
cmovl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
test cl, cl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
cmovbe ebx, edx
or bl, cl
btc rsi, 80
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
bt esi, edx
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
cmovnbe rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
