.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
adc ax, 87
lea si, qword ptr [rax + rdx + 31]
xor al, 38
and bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
cmp bl, 123
xor cl, bl
test eax, -2032743474
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test ax, 13879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
