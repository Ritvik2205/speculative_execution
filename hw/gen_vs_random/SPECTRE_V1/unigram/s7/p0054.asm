.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sbb dl, dl
not dx
cdq
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
add bl, 113 # instrumentation
setnb bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
add al, 107 # instrumentation
lea ecx, qword ptr [rdx + rdi + 39]
add cl, 107 # instrumentation
lea ecx, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
