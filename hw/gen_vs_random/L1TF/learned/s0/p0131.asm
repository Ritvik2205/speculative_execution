.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rsi, 98
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
cmovl rbx, rsi
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and cl, 122 # instrumentation
cmovnb rcx, rsi
add sil, -111
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
setnz bl
add al, 31
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
lea si, qword ptr [rsi + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
lea edi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
