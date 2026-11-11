.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, -88
and dl, -73
test cx, dx
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
jmp .bb_0.1
.bb_0.1:
test sil, 17
jmp .bb_0.2
.bb_0.2:
test al, -7
or ax, 30524
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test dil, dl
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
