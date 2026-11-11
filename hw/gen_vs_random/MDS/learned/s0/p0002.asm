.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo bx, si
or ebx, -15
and rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or rcx, 54
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and cl, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and dl, dl
xor cl, bl
or al, 30
xor bl, al
or dl, cl
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
