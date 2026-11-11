.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
bts rcx, rcx
not ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
xor cl, 122
or al, dl
cmovp dx, dx
and dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
xor al, -28
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
btc rax, rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
test dl, 25
cmovnz dx, dx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
bts rbx, rbx
cmovz ax, cx
test rdi, 62
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
