.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
cmovnz eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
btc edx, ecx
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
lea rbx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
inc dl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
