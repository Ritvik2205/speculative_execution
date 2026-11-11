.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
add al, 112 # instrumentation
cmovnle ecx, edx
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 45
add bl, 79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
lea cx, qword ptr [rax + rax]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
test di, 72
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
xor al, cl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 48
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
lea edi, qword ptr [rcx + rbx + 38]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
