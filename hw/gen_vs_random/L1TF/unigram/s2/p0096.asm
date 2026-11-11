.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, 70
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
cwde
add edi, 49
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 83
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
add bl, 79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rbx]
btc rsi, rdx
sub rbx, 64
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 79
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
add cl, -36
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
