.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
add al, -117 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edi
inc dl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 31
bts edx, edi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
adc eax, 457059541
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 12
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
add bl, -77 # instrumentation
cmovns di, bx
add dl, 22
or edx, 17
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
