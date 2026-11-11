.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and al, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
btr ebx, eax
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
bt edi, ebx
cmovbe si, di
and bx, 71
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 86
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and dl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
cmovl ebx, edx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and cl, cl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
