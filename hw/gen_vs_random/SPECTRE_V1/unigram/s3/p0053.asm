.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -89
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 85
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
cmp sil, sil
add dl, cl
cmovnbe rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 20
lea dx, qword ptr [rbx + rdx]
mul dil
btr rsi, rdx
setnz dl
test bx, 40
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
