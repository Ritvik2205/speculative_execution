.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmp bl, dil
or al, 19
lea di, qword ptr [rax]
or cl, bl
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 51
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
