.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor edi, edx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
sbb dl, cl
lea dx, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 98
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
sbb sil, sil
test rdx, rbx
add dl, dil
setbe al
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
