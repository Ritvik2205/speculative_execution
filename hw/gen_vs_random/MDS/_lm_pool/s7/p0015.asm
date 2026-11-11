.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 21
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test eax, 424329527
and si, -121
xor al, dl
or dl, -89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test sil, dl
and bl, 68
test bl, sil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and cl, al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or sil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
