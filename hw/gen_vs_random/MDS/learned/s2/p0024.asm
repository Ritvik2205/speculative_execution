.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
jmp .bb_0.1
.bb_0.1:
test dl, al
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rax, -2039117613
and rdi, 4
xor eax, -885380838
xor bl, cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
test rax, 337705873
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
