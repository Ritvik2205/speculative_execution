.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rcx + rdi + 62270]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
adc rax, -1877286258
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
setnle sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
setp sil
cmp dl, 66
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and sil, 69
or ax, 10
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
or al, -87
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
