.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 31571
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
setp sil
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
adc rax, -457629677
lea edx, qword ptr [rcx + rdi + 62270]
setnle sil
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and si, bx
lea bx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
sbb cl, 83
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
