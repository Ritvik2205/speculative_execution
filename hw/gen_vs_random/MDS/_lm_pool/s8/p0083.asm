.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
xor cl, sil
or al, dil
jmp .bb_0.2
.bb_0.2:
or ecx, ebx
and di, 91
not cl
xor eax, 571592471
xor dx, 62
or al, 54
or dil, 12
or dl, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
