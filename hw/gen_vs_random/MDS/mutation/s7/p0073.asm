.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
not al
or bl, bl
xor ax, -23364
or bl, 100
xor cl, al
btc rbx, 35
or rax, -1523798580
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor ax, -12492
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and cl, 112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
btr cx, di
or ax, bx
xor bl, -27
not bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
