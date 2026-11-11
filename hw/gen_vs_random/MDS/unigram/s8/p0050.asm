.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, bx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 9
btr si, ax
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
cmovb rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
xor esi, 64
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 59
xor rdx, -59
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 26
test si, bx
cmovnbe rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmovnbe eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
