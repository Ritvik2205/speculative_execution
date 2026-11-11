.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
and edx, -44
xor ax, -5889
test al, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
or al, -22
xor dl, 40
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor ax, -16696
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
test al, bl
or edi, -88
test bl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
