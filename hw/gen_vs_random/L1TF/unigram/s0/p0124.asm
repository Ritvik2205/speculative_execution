.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
cmp sil, dil
xor cx, di
not eax
setnp bl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
add al, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
xchg cx, bx
and edx, ecx
xor al, al
mov ecx, eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 62
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
mov sil, 42
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
