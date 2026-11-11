.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdx, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnp rcx, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
sub al, dil
lea edi, qword ptr [rbx + rdx]
or rsi, 97
jmp .bb_0.1
.bb_0.1:
sbb al, 5
xor sil, al
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
cmovz edx, eax
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 58
lea cx, qword ptr [rdi]
and rcx, rsi
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
