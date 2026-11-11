.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, 104
and cx, -8
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, 30
xor al, 115
or dl, bl
test cl, bl
and cl, 122 # instrumentation
cmovl edi, edi
xor dil, -70
bt cx, bx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
test rsi, 63
cmovl esi, esi
btr ax, 193
or ebx, -104
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovb ecx, ebx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
