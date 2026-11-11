.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, di
jmp .bb_0.1
.bb_0.1:
xor dil, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or dl, -97
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and al, sil
test bl, bl
xor rcx, 71
and dil, -62
test rbx, 3
or al, dil
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
