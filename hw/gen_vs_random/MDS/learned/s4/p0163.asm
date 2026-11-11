.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
test eax, -675944960
bts rcx, 9
or bx, 32
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or bl, al
and dl, dl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or dl, 51
btc di, 233
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
