.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 205
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test al, cl
xor dl, -19
and bl, dl
btr dx, bx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
xor dil, -70
and dl, -73
test dil, al
or ax, -20176
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor al, sil
and eax, 33
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
