.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
xor dil, -3
or cx, 39
test dil, dl
jmp .bb_0.1
.bb_0.1:
test dil, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
not dl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test rax, rdx
and sil, dl
test dl, al
or al, bl
or al, 54
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
