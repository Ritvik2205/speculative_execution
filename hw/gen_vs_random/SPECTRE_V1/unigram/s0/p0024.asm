.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
add al, cl
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
setno bl
imul eax, edi
add dl, 118 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 20
cmovnl rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 37
and ax, -21522
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rax, rbx
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 37
dec dil
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 18
bt di, 236
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
