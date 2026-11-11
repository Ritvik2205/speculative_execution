.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
xor dil, 8
or al, -17
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor al, bl
test eax, 1838539683
xor cl, 98
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
jmp .bb_0.1
.bb_0.1:
or dil, -78
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
xor al, cl
or bl, dil
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
