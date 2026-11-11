.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
cmovb rdi, rdi
xor cl, 98
and rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
btr bx, ax
btr rdx, 65
and cx, -2
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 21
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and edx, -44
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bt ax, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
bts rsi, 221
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
cmovbe edx, edx
and dl, -73
cmovs ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
