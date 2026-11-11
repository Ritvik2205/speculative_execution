.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
xor bl, dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
bts rsi, 206
and al, 42 # instrumentation
cmovz esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
cmovb ebx, esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
cmovp di, dx
test dl, bl
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
btr edx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, -63
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
