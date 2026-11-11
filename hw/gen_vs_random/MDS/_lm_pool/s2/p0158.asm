.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor dl, -43
and rbx, 65
not cl
test rdi, 2
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test ebx, -961564216
or dx, 125
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
or al, -24
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
