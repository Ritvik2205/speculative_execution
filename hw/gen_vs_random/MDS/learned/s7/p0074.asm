.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
test esi, 425331143
test rbx, 94
jmp .bb_0.1
.bb_0.1:
test al, 66
or sil, dl
and cx, -8
or cl, 6
or sil, bl
xor bl, -88
xor ax, -16696
and ax, 19740
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor dl, sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
