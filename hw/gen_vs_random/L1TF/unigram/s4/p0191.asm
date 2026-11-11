.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl bx, si
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
cmovnz rsi, rax
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and ebx, 108
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 36
cwde
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 61
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
sbb cx, 45
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
