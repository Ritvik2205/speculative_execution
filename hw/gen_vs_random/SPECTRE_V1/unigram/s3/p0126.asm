.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rsi, rcx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
add cl, -26 # instrumentation
cmovnp di, si
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
sbb dl, dil
adc dil, al
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 1
add bl, -108 # instrumentation
sbb dil, 80
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
dec al
setnb cl
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
add bl, 41 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edi
xchg rdi, rdx
add al, 112 # instrumentation
setl al
lea rax, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
