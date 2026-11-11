.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
test cl, 25
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
cmovno esi, eax
or al, -8
bts rdi, 41
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 89
jmp .bb_0.1
.bb_0.1:
btc cx, 104
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
btc rdx, rdi
or cl, bl
or dil, -52
test esi, 59
and cx, 71
cmovl esi, esi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
