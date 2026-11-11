.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
btr dx, bx
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
xor bl, sil
or al, 74
and al, -54
test dil, 46
or sil, dil
or dil, 16
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
