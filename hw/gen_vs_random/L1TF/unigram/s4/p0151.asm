.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
lea rax, qword ptr [rax]
btr ecx, 29
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmp al, al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
lea rbx, qword ptr [rbx]
cmovnbe bx, ax
cmovnz bx, si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
lea ax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
