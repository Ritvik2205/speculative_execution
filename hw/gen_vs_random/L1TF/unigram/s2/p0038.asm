.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
xchg dx, bx
add dl, 10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 50
test ebx, ecx
movzx ax, al
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
lea bx, qword ptr [rdx + rdx + 100]
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rax + rdi + 36]
xor esi, 89
xor sil, sil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
lea cx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
