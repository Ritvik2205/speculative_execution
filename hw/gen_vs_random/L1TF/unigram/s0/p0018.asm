.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
imul edx, esi
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
setnle dil
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
inc rax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
sbb dl, -26
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
or dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
cmovnb dx, di
setnp cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
