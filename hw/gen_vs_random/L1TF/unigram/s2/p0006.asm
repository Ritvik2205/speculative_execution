.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
sbb si, 73
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
lea rdx, qword ptr [rbx + rcx + 56]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sbb ebx, 9
setp dl
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
adc sil, sil
cmovnp eax, ecx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
