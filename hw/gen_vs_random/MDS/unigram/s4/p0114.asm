.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 25
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
cmovz rsi, rdx
cmovb cx, cx
or rbx, rcx
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
cmovns eax, esi
and dil, 122 # instrumentation
cmovnb rdi, rcx
and ax, 28417
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
bts si, di
bts rdi, 27
bt edi, 254
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
cmovs edi, edi
cmovnz rax, rsi
or cl, 10
or bl, cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
or bx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
