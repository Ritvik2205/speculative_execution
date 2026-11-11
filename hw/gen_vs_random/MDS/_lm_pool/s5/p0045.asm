.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 92
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
bt cx, dx
and dl, -73
xor al, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or dl, -89
and sil, al
btr dx, di
or cl, -36
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
or rax, -1523798580
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
