.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rcx + rcx + 8848]
sub al, cl
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
cmovnb si, si
lea eax, qword ptr [rsi + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
xor edi, 115
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
sbb rax, 342397759
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
add cl, 72 # instrumentation
adc al, 117
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
