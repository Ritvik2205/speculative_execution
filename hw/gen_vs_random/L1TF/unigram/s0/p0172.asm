.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
add ecx, edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
add cl, 121 # instrumentation
cmovs ebx, ebx
lea rsi, qword ptr [rbx + rax + 59]
cmp cl, dil
lea ax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 80
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sbb edi, 83
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
