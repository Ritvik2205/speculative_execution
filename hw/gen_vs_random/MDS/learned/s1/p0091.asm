.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and cl, cl
and al, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 35
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
not al
jmp .bb_0.3
.bb_0.3:
test rax, -708244380
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
jmp .bb_0.5
.bb_0.5:
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
