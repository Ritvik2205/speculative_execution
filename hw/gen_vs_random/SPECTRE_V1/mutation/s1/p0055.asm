.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rax, 620504108
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
mov cl, -72
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
