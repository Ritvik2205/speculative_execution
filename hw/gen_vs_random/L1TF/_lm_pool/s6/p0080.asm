.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
adc dil, dl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
xor rdi, -80
not ecx
add al, dil
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
test bl, 84
and rax, 1994547909
cmp dl, -56
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
