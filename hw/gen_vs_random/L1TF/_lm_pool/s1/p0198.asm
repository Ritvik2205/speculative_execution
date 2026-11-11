.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
lea rdx, qword ptr [rsi + rax + 81]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cwde
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -92
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 47
btc di, dx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test ax, 13284
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
