.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
test al, al
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and dl, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 18
xor di, 93
cmovns dx, di
jmp .bb_0.1
.bb_0.1:
test rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and cl, 122 # instrumentation
cmovl edx, edx
cmovnbe ebx, ecx
btc si, dx
xor cl, dl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
