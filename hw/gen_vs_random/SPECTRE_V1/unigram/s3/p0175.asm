.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rbx + rdx + 9]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
add cl, 44 # instrumentation
cmovz eax, edx
xor cl, 71
add bl, -42 # instrumentation
lea bx, qword ptr [rax + rcx]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
inc bl
xor ebx, 44
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
btc esi, 92
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc dx, 45
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
add dl, -47 # instrumentation
sbb bl, 77
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
