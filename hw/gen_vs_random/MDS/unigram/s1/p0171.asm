.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
or al, 54
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and dil, -14 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
and al, -114
test rsi, 83
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
test al, bl
test cl, cl
test bl, -14
test al, cl
test sil, 41
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 58
and cx, -8
cmovns eax, edi
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovz di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
