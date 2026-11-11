.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
btr bx, cx
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or sil, -78
test bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
or al, -78
test dl, 9
jmp .bb_0.1
.bb_0.1:
xor si, 80
jmp .bb_0.2
.bb_0.2:
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
