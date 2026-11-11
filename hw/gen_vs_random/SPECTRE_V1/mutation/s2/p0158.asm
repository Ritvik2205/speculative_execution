.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -89
lea ax, qword ptr [rdi + rcx + 51483]
sbb cl, dl
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 117
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
movsx ax, al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setnz dil
adc si, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
