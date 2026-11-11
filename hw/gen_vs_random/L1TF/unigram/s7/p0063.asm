.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
lea rdi, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
setz al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
sub edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
lea esi, qword ptr [rcx + rsi + 5]
setp bl
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and sil, bl
jmp .bb_0.1
.bb_0.1:
setnb dil
adc dil, al
sub cl, bl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
