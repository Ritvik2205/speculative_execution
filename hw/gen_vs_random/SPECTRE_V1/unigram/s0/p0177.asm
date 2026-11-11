.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
btr rsi, 47
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and dil, 66
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 99
setno al
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea ecx, qword ptr [rax + rdx + 57]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 81
add bl, 125 # instrumentation
adc bl, sil
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
