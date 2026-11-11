.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, di
test dil, cl
bt di, cx
or dl, -97
xor al, bl
or ax, 30524
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or cl, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cl, cl
xor al, 9
or al, 25
and rax, -2039117613
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
