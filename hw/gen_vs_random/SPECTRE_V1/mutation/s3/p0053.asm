.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
lea eax, qword ptr [rsi + rax]
lea rdx, qword ptr [rcx + rcx + 8848]
sub al, cl
cmovnb si, si
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
add cl, 72 # instrumentation
adc al, 117
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
add dl, dl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
xor edi, 115
sbb rax, 342397759
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
