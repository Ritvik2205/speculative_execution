.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
cmovs bx, si
cmovbe esi, edx
and dl, 97 # instrumentation
cmovnp ax, di
cmovo edx, edi
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rbx, rax
or dl, cl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 38
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rdx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
