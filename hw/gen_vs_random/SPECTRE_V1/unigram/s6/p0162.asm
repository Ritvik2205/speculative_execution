.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rcx
bts rdi, 19
cmp cx, 88
and sil, bl
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 97
cmovs si, cx
cmovnle rbx, rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, al
cmp dl, al
or ebx, -124
xor edx, 58
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
lea rdi, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
