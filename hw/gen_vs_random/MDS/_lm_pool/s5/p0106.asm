.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and si, -121
or rax, 1020005579
not bl
xor dl, 8
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
not bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
or dl, -8
or dl, al
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
