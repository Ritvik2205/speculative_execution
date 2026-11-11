.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
bt ax, cx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
cmovnb dx, bx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
test bl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
jmp .bb_0.1
.bb_0.1:
and al, dil
xor rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
test ebx, -2015966884
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 62
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and eax, 454700988
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
