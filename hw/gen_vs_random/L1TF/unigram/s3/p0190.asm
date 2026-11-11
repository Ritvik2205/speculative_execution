.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sub bx, 56
cmovnl bx, di
cmp dil, dl
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 50
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
cmovno bx, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
add al, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
lea rdi, qword ptr [rdx + rcx]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
xchg rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
