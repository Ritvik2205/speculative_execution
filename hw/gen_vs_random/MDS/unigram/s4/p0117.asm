.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 72
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
cmovo esi, esi
bt rdi, rdi
xor dx, 78
test edi, eax
btr edi, esi
jmp .bb_0.1
.bb_0.1:
btc di, 164
test eax, -675944960
cmovbe edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
cmovle bx, dx
cmovnb rax, rsi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
btr ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
