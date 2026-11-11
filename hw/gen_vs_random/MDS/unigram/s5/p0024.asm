.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
xor dl, cl
or sil, -49
xor rsi, -117
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
bt ebx, 37
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 63
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
cmovp ax, cx
cmovns di, bx
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
or al, -75
cmovbe rbx, rax
and bl, 68
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
