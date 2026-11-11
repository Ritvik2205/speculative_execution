.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 40
cmovl rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
cmovnbe ax, di
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdi + rsi + 29]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
