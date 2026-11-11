.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
add dil, dil
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
and esi, 81
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or rdi, 61
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
