.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -2019837038
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl eax, edi
cmovb ax, ax
mov al, sil
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 42
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
