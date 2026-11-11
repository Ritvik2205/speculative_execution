.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 58
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
not ecx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
movsx bx, al
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 56
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
cmovz ebx, edi
and cl, cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
lea edi, qword ptr [rax + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
