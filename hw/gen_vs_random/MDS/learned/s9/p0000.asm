.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 58
or bl, bl
or cl, -77
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
xor cl, al
test dl, 9
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
or sil, -49
xor al, cl
xor rax, -1657511731
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor di, -83
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
