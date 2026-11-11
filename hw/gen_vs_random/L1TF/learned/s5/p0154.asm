.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or sil, dl
xor rcx, 70
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
cmp sil, al
jmp .bb_0.2
.bb_0.2:
lea ecx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor edi, 64
jl .bb_0.3
jmp .exit_0
.bb_0.3:
or cl, 105
lea rcx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
