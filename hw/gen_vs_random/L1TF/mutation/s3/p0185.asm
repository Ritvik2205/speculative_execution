.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
cmp dl, 64
setnle sil
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
lea edx, qword ptr [rcx + rdi + 62270]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
adc rax, -1877286258
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
or ax, 10
or al, -87
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
setp sil
and sil, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
