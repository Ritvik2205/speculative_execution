.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
xor eax, -885380838
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
test rax, 1000448998
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
btr ax, 193
and ax, 31082
jmp .bb_0.2
.bb_0.2:
or cx, 49
xor rcx, -2
or bl, 127
bt ax, bx
xor rax, -345061362
or al, 74
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
