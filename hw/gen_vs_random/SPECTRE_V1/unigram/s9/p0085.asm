.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 20
cmovb rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 59
sub bl, dl
inc al
sub cl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not si
or dl, 41
inc al
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
lea ax, qword ptr [rsi + rcx + 24]
add dil, 45 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
sub al, -82
test rsi, -1408527332
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
