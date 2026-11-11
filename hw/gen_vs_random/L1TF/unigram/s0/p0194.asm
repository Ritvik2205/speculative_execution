.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 43 # instrumentation
adc al, al
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
inc esi
lea rcx, qword ptr [rbx + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
not rsi
and cl, 11
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
sbb dx, 100
bt eax, 22
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
nop
sbb edx, edx
and edx, ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
