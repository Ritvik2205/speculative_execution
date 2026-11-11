.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
cmovns edi, edx
xor si, 80
or dl, 51
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or dx, 125
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and al, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
