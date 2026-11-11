.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 31571
setnle sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and sil, 69
lea edx, qword ptr [rcx + rdi + 62270]
or al, -87
adc rax, -457629677
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
cmp dl, 66
setp sil
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
