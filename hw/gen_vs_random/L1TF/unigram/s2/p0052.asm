.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 51
add cl, bl
lea ecx, qword ptr [rdx + rbx + 67]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnp rbx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi]
cmovs edi, edi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 32
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
