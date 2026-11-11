.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
or bl, -54
or al, dl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test al, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and edi, 23
and dl, -73
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
