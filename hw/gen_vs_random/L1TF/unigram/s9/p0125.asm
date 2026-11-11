.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, cx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
bts si, si
sbb ebx, 9
movzx cx, cl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 52
dec cl
xchg cl, cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
add cl, 40 # instrumentation
cmovbe bx, dx
sub bl, 15
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
add al, 65 # instrumentation
cmovo rax, rcx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
