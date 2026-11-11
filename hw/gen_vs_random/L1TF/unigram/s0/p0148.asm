.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, -121
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
movzx rax, ax
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
sbb edx, 23
lea ax, qword ptr [rbx + rcx + 56]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
test al, bl
sub rax, rsi
xor sil, 64
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
lea si, qword ptr [rdx + rax]
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
