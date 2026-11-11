.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
cmp rsi, 53
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
xchg rsi, rax
and al, dl
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add esi, 19
lea rsi, qword ptr [rdi + rbx]
add al, cl
cmp al, cl
xor cx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
