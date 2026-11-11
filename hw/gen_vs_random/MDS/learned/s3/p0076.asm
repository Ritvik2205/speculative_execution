.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
test sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
xor ecx, 8
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor sil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
test dl, al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 10
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
