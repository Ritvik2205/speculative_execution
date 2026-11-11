.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
cmovns rcx, rcx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 9
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 28
cmovp esi, ecx
adc di, dx
imul dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 92
sbb edx, 40
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 73
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
add cl, 97 # instrumentation
adc di, dx
or ax, si
cmovnbe rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
