.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
test al, sil
and bl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
cmovle bx, di
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
