.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
btc ax, 18
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and al, 122 # instrumentation
cmovnbe eax, ecx
btr bx, 71
bts di, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and bl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 44
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
and al, cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 43
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 83
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and dl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
or edx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
