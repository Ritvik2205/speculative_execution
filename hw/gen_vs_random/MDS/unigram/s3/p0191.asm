.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, 115
cmovs edx, edx
cmovno cx, cx
xor cl, 55
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
or al, -75
or al, dl
jmp .bb_0.1
.bb_0.1:
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
or dil, sil
xor edi, 86
btc rax, rax
btr ebx, 0
test dx, di
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
