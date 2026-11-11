.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovz ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
and rbx, 39
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
or rdi, rbx
inc sil
bt cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 76
imul dx
btr bx, 144
add dl, -96 # instrumentation
cmovo eax, eax
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
