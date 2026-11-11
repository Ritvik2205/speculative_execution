.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
or al, dil
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and dl, 48 # instrumentation
cmovz rsi, rax
or cx, 49
and al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
bt ax, si
or dl, -97
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
xor al, 34
cmovle ecx, edi
not dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
