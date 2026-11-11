.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
test cx, bx
and rcx, rdi
test rdx, 78
or cx, 49
cmovz rdx, rcx
and bl, 21 # instrumentation
cmovb cx, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 19
cmovnb rax, rsi
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and bl, -53 # instrumentation
cmovbe ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 3
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
bt rdx, 83
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 60
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and dl, 93 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and bl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
