.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rax
and dil, 58
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 56
inc sil
lea rax, qword ptr [rcx + rdx]
or edi, 91
adc bl, al
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
sets dil
or ebx, 33
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
