.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
lea rcx, qword ptr [rax]
imul ax
add sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
add esi, -124
cmovz ecx, edi
xchg cx, dx
jmp .bb_0.1
.bb_0.1:
or bl, dl
cmp ebx, 74
cmp rcx, 61
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
lea dx, qword ptr [rbx + rax + 27]
cmovo dx, cx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
