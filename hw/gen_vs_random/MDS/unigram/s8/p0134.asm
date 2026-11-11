.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
xor cl, 24
and di, di
cmovo rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
btr dx, cx
xor rdi, -9
btr rax, 56
test dx, 16353
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
or bl, 13
and esi, 60
or cl, 39
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
cmovle rdi, rdx
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
