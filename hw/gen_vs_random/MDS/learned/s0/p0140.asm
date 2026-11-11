.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
xor al, -89
or dil, -78
and dil, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
btr si, cx
and dl, -73
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
test rax, -359674714
or al, 37
xor cl, dil
test al, 91
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
and ax, 5001
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
