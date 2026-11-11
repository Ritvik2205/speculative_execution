.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
cmovns ax, di
xor ax, -23364
and edi, 23
xor bl, al
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
btr ecx, 77
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
cmovno rdx, rdx
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
not rax
and bl, -123 # instrumentation
cmovnp bx, ax
and si, cx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test di, dx
cmovns ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
