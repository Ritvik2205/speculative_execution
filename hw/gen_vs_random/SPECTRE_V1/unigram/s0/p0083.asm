.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmp ax, cx
lea si, qword ptr [rax + rax + 49]
xor bl, bl
cmovnle rcx, rax
cmp rax, -72548874
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bx, 46
add dl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
or bl, dl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 68
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
add cl, -51 # instrumentation
cmovno rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
cmovnle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
