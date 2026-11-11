.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg eax
movzx esi, di
cmp al, dl
sub dil, cl
cmovle rdi, rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
sbb ebx, 85
bts di, 144
movsx rdx, cx
setns bl
lea rdi, qword ptr [rdi]
adc dl, bl
cmovo cx, ax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
