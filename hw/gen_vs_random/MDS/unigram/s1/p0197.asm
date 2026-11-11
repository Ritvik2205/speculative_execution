.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -59
cmovnle rcx, rsi
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 70
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
or cl, 100
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
btr eax, edi
jmp .bb_0.1
.bb_0.1:
xor esi, 75
test al, -59
cmovnl edx, ecx
and al, -56
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
not bl
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
