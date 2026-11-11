.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
sub al, cl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
cmp al, 46
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 48
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
cmovs rsi, rsi
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
