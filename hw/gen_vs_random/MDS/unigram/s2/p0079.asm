.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
or al, -8
xor dl, -125
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
bt ebx, 107
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or ax, -17790
cmovb si, si
cmovb rdi, rsi
jmp .bb_0.1
.bb_0.1:
or ecx, 12
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 56
xor rdx, 56
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 84
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
cmovz rdx, rax
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
