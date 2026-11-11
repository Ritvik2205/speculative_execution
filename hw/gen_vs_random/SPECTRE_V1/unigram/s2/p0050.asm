.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 63 # instrumentation
cmovle cx, bx
add al, -125 # instrumentation
cmovb ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
add bl, -41 # instrumentation
xchg sil, al
cmovnbe ax, ax
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xchg ax, cx
add cl, 73 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
sbb rax, 1380680934
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
