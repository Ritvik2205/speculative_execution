.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
test dil, -116
add al, dl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 44
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 41
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
cmovnz rsi, rdi
adc esi, -66
cmp rax, -1365488374
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
