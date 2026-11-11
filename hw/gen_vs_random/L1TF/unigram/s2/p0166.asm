.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rsi]
lea si, qword ptr [rdi + rsi + 47]
setb dl
adc edi, 117
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
cmovno bx, ax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], eax
adc edx, edx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add dl, 76 # instrumentation
sbb dx, 51
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
