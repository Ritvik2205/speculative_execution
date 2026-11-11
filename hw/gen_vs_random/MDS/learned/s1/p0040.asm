.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or cl, sil
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor rdi, -9
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
bt bx, si
xor edi, 9
or al, 24
and eax, -85386306
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
