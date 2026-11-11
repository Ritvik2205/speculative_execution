.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmovo rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
imul rbx
cmovb edi, edi
setnb dl
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
cmovns eax, ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
xchg eax, ecx
setnbe cl
add dl, sil
cmovnbe rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
