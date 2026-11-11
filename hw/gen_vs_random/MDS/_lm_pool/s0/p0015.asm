.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 71
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
test dil, -80
test eax, 1287331633
or al, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor rax, 459999114
test bl, dl
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
