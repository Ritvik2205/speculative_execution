.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
xor al, 89
not al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
and dil, dl
lea rax, qword ptr [rsi + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test al, -56
xor cl, dl
lea rsi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
