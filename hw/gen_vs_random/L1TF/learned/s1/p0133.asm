.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
xchg dl, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
cmovnbe edi, eax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
jmp .bb_0.1
.bb_0.1:
add dx, si
btc bx, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
movzx rax, dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], dx
bt ax, 98
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
