.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
not edi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
adc esi, 28
cmovs edi, edi
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
cmovbe edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
mov dl, 36
and edx, 76
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
add al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
