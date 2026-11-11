.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
cmovnle ax, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and bl, 65 # instrumentation
cmovnbe si, ax
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 82
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
not cl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and dil, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 7
or esi, ecx
btc eax, 40
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
