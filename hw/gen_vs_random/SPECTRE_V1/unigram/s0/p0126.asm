.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 61
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
cmovno rbx, rcx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rdx + rax]
add dl, 47
sbb cl, 105
lea ax, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 17
test cl, -62
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
