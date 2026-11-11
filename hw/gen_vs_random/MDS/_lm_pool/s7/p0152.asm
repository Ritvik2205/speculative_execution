.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rbx
or sil, -49
xor bl, -27
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and dil, al
or al, al
xor bl, cl
xor al, 8
jmp .bb_0.1
.bb_0.1:
or dl, cl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
jmp .bb_0.2
.bb_0.2:
test al, 91
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
