.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
and bx, cx
bts ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
cmovnb bx, dx
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 88
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
or al, -78
bts rsi, 206
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
