.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19224
or edi, -88
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
xor bl, dil
and sil, -69
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test rdi, 29
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor al, 9
or dil, bl
or al, al
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and bl, 68
and dil, -39
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
