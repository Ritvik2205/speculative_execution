.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test bl, al
or al, 30
and bl, dil
and rax, -978188247
test cl, -18
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and ax, 29207
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor al, dil
xor al, bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 39
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
