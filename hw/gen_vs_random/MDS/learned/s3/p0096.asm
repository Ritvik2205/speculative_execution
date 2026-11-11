.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor al, 34
xor rbx, 89
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
test al, 66
test edi, -1252846009
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and al, 87
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test sil, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
