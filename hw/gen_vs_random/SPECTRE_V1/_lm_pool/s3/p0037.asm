.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 15
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor eax, -1721938664
add bx, -65
lea di, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
test cl, -33
add al, al
cmp dil, bl
and al, dil
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
