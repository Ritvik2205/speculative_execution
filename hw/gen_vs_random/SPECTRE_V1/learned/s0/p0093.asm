.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
sub al, cl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 60
sub sil, bl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
add al, bl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
