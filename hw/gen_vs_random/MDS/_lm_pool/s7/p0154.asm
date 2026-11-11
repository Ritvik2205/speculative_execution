.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
bts rcx, rbx
btr di, ax
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or cl, 6
test dil, -80
test ax, -11534
and dl, -73
and esi, 92
or sil, dl
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and dl, -73
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
