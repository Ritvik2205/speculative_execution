.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rcx, rdi
or dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
cmovl rax, rdi
bts di, 17
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
not al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and bx, ax
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
xor cl, 122
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 48
or dl, 22
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cmovnp si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
