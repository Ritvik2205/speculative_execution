.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and dx, 3
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and ax, -10351
test al, 91
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
or dl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or cl, bl
and ax, 27170
test bl, -9
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
