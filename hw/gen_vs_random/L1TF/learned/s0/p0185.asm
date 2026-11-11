.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 37
and cx, 127
lea ax, qword ptr [rsi + rcx + 49]
cmp rax, 108211639
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 61
test rcx, rax
xor edi, 82
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
test ax, 13284
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
