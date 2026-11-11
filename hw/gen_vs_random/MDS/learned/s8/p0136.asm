.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 13
or eax, -1777347252
btr bx, 74
xor si, 80
test bl, dl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test dil, dl
test rbx, 30
xor dil, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
