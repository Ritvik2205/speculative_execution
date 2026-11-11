.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
cmovnle eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
test dl, al
xor dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
cmovnbe ax, di
and rsi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rsi]
cmovle edx, esi
xor dil, dil
cmovl si, di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
