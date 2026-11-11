.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
bts esi, 57
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
or rsi, 32
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
add al, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 72
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
