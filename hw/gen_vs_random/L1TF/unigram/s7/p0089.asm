.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax + rbx + 9]
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
cmp dil, 91
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovnle rsi, rdx
inc edx
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
test di, 15
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
