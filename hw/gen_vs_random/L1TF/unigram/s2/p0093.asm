.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, rbx
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
bt rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
xor si, dx
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
btc bx, dx
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
movsx esi, dl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 73
xor dil, dl
lea ax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
