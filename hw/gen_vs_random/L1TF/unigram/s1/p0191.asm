.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
mul bl
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 10
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
btc si, 66
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 97
and rdx, 27
inc al
cmovle bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
