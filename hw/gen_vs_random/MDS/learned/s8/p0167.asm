.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
test al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and dl, -73
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or si, -12
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
xor dil, dl
or dl, 85
or rdi, -11
or al, -58
or sil, -78
jmp .bb_0.1
.bb_0.1:
or al, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
