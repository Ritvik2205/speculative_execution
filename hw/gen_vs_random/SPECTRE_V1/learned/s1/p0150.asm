.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -108 # instrumentation
sbb dl, 77
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
cmovs ax, di
or bl, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
cmovo dx, di
xor al, 86
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 100
or sil, 3
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
xor al, -64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
