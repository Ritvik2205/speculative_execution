.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
or al, sil
not al
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and sil, -69
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
test rax, -359674714
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
btr di, 89
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test al, sil
xor al, 8
test edx, -372470678
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
