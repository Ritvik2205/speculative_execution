.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
test dil, -116
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
or dil, 98
and cl, -57
xor al, -19
xor dl, 71
add al, -13
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
