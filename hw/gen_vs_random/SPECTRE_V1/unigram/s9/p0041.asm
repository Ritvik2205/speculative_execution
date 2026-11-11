.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
btr bx, 144
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
not rcx
btr rdi, rcx
dec bl
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
xor al, dil
mul cl
adc di, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
