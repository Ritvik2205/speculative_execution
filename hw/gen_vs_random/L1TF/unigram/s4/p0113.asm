.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and ebx, 72
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 48
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
adc dl, dl
add al, 64 # instrumentation
cmovnl rdx, rbx
xor bl, dil
cmovnz eax, ecx
btc rax, 94
and ax, cx
btc rdi, 243
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
