.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 73
xor dil, 8
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
xor bl, -88
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
jmp .bb_0.2
.bb_0.2:
test dil, -51
and dl, al
or dl, cl
or al, -78
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
xor rdi, -9
and rax, -978188247
bts rbx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
