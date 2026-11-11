.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
setnp dil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 51
xchg al, dl
setp dil
add dl, -52 # instrumentation
adc bx, 45
imul ax, dx, 32
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovl edx, eax
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
xor al, bl
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], 75
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 30
adc dil, sil
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
