.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rax + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
add bl, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
setl dl
cmovnbe edx, edi
lea eax, qword ptr [rdx + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
btr eax, ecx
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
