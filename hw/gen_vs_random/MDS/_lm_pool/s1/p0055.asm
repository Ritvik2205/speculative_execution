.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 89
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or al, dl
or bl, al
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or al, 24
or al, 16
xor cl, dl
and dl, -73
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and si, -121
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or cl, bl
jmp .bb_0.2
.bb_0.2:
cmovnp rdx, rcx
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
