.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
xor dx, 87
xchg rdi, rbx
add bl, -41 # instrumentation
xchg dil, bl
add dil, bl
adc rbx, 61
cmovnz rcx, rdx
sub edx, ebx
and bl, bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rbx + rdx + 59]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovnbe esi, eax
sbb ecx, -1
add bl, 73 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
