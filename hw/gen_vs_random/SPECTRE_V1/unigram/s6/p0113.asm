.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
setp dil
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
sbb eax, 1830317432
and dl, -109
and rbx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rbx]
xor al, 54
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 8
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
setnb al
lea cx, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
