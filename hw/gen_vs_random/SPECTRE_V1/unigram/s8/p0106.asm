.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
lea rcx, qword ptr [rbx + rdx + 43]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 28
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
lea eax, qword ptr [rdi + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
test cx, -17886
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
