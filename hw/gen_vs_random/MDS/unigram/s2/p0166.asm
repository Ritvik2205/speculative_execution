.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, 99
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
bt rdi, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
test edi, -1252846009
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
btr edi, 221
cmovns si, dx
btc ax, si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor bl, sil
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
