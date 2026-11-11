.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 54
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 4
cmovz dx, dx
and esi, 88
xor rax, rdi
test rdx, rcx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
test cl, al
and ax, 339
and cx, -8
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
cmovo rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
