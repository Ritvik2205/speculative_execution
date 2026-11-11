.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, -63
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
or bl, dl
test dl, 27
xor al, 9
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and cl, cl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test rax, 1214712583
or dl, -21
and cl, al
or al, -58
cmovo ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
