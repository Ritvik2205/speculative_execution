.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 11 # instrumentation
cmovns edx, edi
cmovnz ax, dx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
lea cx, qword ptr [rcx]
not dx
cmovns rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
sbb al, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, rbx
or dil, 80
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
cmovnle dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
