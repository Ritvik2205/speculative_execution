.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, ecx
lea esi, qword ptr [rbx + rbx + 18]
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
add dl, -53 # instrumentation
lea rbx, qword ptr [rax + rcx + 31]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
lea ax, qword ptr [rax]
lea ax, qword ptr [rbx + rdx + 8]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], sil
lea esi, qword ptr [rdx + rax + 82]
cmovnb ebx, esi
xchg eax, ecx
adc cl, cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
