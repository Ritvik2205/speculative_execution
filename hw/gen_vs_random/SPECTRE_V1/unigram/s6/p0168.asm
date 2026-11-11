.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
adc dil, 1
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
movsx ecx, al
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
xor al, al
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
sets al
lea di, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
sbb dl, 127
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
movzx ecx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
