.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 82
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
btc rdx, rdi
bt rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
bts bx, dx
test edi, eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
test al, dl
cmovz di, di
or ecx, ebx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
test edi, -1252846009
or rax, rdi
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or al, 25
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
