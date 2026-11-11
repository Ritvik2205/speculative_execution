.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
xor dil, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
not cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
test eax, 1287331633
test rcx, -613256812
test rsi, 76
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
xor al, 99
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
