.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rbx
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 65
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
adc al, -61
bt rbx, rax
cmovz rbx, rdi
cmovle eax, edx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
add cl, -41 # instrumentation
adc di, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
sub di, 78
lea edi, qword ptr [rdi + rcx + 94]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
