.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, bx
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
test cl, 62
jmp .bb_0.1
.bb_0.1:
test bl, -92
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
lea rdx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 23
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
