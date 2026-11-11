.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
bts rdi, rbx
test dil, -80
or al, bl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor bl, al
or dil, al
test eax, 1729060510
bt di, ax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
