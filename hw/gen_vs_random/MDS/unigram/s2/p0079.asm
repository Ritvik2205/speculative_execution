.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmovs si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
cmovnbe edx, eax
bts esi, 61
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
cmovs rdi, rsi
or dl, 85
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
or dl, -8
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
test bx, cx
or al, 16
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and dl, 72 # instrumentation
cmovz eax, ecx
bts bx, dx
cmovns ax, si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
