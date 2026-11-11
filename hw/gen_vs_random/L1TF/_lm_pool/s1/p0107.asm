.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
lea esi, qword ptr [rax + rax + 39]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 19
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
xor di, 37
add cl, -36
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 58
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
or eax, 1495028166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
