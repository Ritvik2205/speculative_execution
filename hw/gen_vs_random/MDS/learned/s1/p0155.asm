.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test eax, 343548072
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
or bl, -54
xor al, 99
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor dl, -43
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test bl, dl
test dil, bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and di, 99
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
