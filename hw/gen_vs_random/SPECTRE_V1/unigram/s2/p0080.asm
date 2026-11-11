.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, dl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
xchg dl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
or cl, -62
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
lea rax, qword ptr [rsi + rbx + 16]
test ax, bx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
add bl, -9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
bt edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
