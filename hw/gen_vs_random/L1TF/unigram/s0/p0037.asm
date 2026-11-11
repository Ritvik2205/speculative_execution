.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 63
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 93
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
cmp dl, -56
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
add al, -87 # instrumentation
cmovnle rdi, rax
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
mul rax
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
adc dil, dil
movzx rdx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
