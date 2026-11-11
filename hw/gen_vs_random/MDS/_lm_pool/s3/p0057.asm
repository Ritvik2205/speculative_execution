.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
test rax, 1000448998
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or bl, 127
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, 91
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
jmp .bb_0.4
.bb_0.4:
test eax, 424329527
not al
or cl, 30
jmp .bb_0.5
.bb_0.5:
test bl, -14
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
xor bl, 67
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
