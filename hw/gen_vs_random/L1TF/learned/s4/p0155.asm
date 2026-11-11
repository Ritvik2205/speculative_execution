.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
sbb edi, 10
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
sbb di, bx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
bt ax, 205
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
not al
jmp .bb_0.2
.bb_0.2:
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
