.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -82 # instrumentation
cmovz eax, ebx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or rdi, -11
test cx, dx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
xor rbx, 89
xor bx, 64
and al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
test bl, 65
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
cmovb rsi, rax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 26
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
