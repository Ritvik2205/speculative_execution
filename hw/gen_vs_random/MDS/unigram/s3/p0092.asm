.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb edx, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
btc rdx, rcx
cmovl rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
not ax
bt edi, ecx
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 51
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 95
or dl, 22
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
or al, -48
cmovns eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
