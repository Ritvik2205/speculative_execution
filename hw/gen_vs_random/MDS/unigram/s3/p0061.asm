.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
bt rbx, rdx
and dil, dl
and dl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
btc di, si
test esi, 425331143
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
btc rdx, 14
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovns edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
cmovz rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
cmovl ebx, edx
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 41
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
