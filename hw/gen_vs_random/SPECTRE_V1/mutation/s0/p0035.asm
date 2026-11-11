.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
or al, 100
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
test ebx, eax
test ax, -32457
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
sub bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
