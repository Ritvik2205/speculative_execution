.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, cx
xor rsi, -117
and ax, 5001
and cl, -6
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
or rax, -1523798580
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor bl, al
and dl, dl
and al, sil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or ax, -7150
test ax, -20900
test eax, 424329527
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
