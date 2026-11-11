.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 81
or bl, -125
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
xor bl, al
xor al, dl
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and dl, bl
or cl, -77
test dil, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
