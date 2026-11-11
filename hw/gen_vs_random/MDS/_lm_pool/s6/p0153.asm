.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor dl, 8
bt si, ax
and ecx, -104
or cl, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, dl
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
btc rax, 59
jmp .bb_0.3
.bb_0.3:
xor al, dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
