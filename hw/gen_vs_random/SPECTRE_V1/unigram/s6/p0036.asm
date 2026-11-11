.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 15
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
imul eax, edi
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 94
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
sbb ax, -17107
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
