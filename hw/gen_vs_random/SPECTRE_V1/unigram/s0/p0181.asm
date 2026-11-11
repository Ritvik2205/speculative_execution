.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 67
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
setnb bl
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, sil
setnz sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
cmp edi, edx
cmovnbe rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
