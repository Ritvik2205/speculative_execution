.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
mov al, dl
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
inc dx
adc dil, 52
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 99
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
