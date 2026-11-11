.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 85
cmovp rdx, rax
and ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 77
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and bl, 68
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and cl, 66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and al, -55
test di, bx
cmovl ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
cmovz rcx, rcx
and al, al
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
