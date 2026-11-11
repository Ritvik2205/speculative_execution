.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor ax, -6793
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
test al, -7
test rax, -363019044
jmp .bb_0.1
.bb_0.1:
and al, 49
and cl, dl
or bl, 100
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
or sil, al
or dl, -31
xor al, bl
xor bl, -88
or dl, 51
xor dil, -70
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
