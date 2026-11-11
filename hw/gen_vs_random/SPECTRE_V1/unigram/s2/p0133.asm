.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
movzx eax, sil
cmovl edi, eax
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
add dil, 27
or al, sil
mov cl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmovno rsi, rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
add bl, dil
xor al, -64
add dil, 40 # instrumentation
lea di, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
