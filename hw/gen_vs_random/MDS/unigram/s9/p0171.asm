.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
bts edx, edx
not bl
xor cl, dl
cmovle rax, rsi
or dil, -78
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
btr ebx, edi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
bt rbx, rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
xor ebx, 26
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and bl, 15 # instrumentation
cmovb bx, ax
xor dl, -19
and dl, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovp dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
