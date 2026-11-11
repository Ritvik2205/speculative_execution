.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
cmp bl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or al, -57
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmovbe edi, eax
btc eax, 220
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
btc si, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
