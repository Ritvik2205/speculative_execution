.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
setz al
add bl, 68
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
not dil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
test bl, 84
and si, 70
and rax, -109
test al, -82
cmp cx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
