.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb di, di
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 29
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdx, 94
test bl, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor ebx, 16
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
or dl, -115
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 28
test al, dil
and cx, si
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
