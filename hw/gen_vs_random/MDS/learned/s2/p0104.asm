.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
xor cl, dil
test sil, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test dl, al
or rbx, -72
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
xor al, 9
xor al, 99
test al, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
test rbx, 69
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
