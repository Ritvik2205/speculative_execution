.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
add al, -84 # instrumentation
lea eax, qword ptr [rcx + rcx + 8]
lea rdx, qword ptr [rcx + rdi]
or ebx, -124
sbb cl, sil
lea di, qword ptr [rsi + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
add cl, 46 # instrumentation
sbb rsi, 95
test rbx, rdi
lea bx, qword ptr [rdi + rdx + 79]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -86 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
cmovno bx, di
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
