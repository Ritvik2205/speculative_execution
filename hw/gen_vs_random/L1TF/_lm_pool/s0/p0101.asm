.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
add al, -102
or al, -48
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 12
lea si, qword ptr [rdi]
lea rbx, qword ptr [rsi + rdx + 44]
xor cl, dl
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
