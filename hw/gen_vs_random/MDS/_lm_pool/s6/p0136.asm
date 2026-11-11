.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, bx
or al, -75
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and al, bl
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
xor rsi, -117
or al, 24
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
or al, dil
xor sil, -14
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
