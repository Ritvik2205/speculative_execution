.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
not dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or dl, bl
or rdi, 21
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor al, dil
xor al, cl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
