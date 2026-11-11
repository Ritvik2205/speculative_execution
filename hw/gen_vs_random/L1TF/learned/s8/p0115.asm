.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and ax, 7954
jmp .bb_0.1
.bb_0.1:
sets bl
xor bl, al
lea rbx, qword ptr [rdi + rcx]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 40
or rax, 699028911
and bx, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
