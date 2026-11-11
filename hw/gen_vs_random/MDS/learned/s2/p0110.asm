.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
not dl
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
or al, 54
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rax, -1701787862
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
or bl, cl
and di, 91
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
