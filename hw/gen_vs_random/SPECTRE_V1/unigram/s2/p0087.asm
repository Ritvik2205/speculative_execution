.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdx, di
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 90
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
cmp rcx, rbx
and rax, 2134929425
xor rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
imul rbx, rsi, 13
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
or cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
imul edx, edi, -31
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
