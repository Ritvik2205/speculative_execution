.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
test eax, 1287331633
xor ecx, 8
xor bx, 14
and ax, -12519
test al, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or al, 30
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
jmp .bb_0.2
.bb_0.2:
test al, cl
xor sil, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
