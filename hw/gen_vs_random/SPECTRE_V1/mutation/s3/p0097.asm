.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
cmovnb si, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
lea eax, qword ptr [rsi + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
lea rdx, qword ptr [rcx + rcx + 8848]
sub al, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
xor edi, 115
and cl, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
add cl, 72 # instrumentation
adc al, 117
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
sbb rax, 786640702
add dl, dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
