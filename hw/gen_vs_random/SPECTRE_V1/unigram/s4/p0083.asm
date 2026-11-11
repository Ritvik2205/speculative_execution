.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 26
cmp edx, 44
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
lea cx, qword ptr [rdx + rax + 63]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
add bl, -114 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
lea cx, qword ptr [rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], edx
bt ax, 8
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
