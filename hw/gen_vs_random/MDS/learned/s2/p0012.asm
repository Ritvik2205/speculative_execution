.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
or al, -78
test bl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or bl, dil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
test dl, cl
and dl, -73
and dil, dil
test rax, 337705873
not al
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
