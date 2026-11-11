.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -5
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
btc ax, 96
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
xor sil, 110
not al
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and bl, 15 # instrumentation
cmovb ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and dx, si
and ax, cx
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
bts cx, 177
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and ebx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
