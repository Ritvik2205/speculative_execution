.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
bts eax, esi
cmovno eax, edi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 97
and cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and ax, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
or rax, 1749358813
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmovns ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rsi, 70
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
