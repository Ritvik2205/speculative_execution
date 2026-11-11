.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
xor rdi, -9
xor bl, -102
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
btc si, bx
not bl
test dil, -80
xor al, -89
btc dx, 67
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
