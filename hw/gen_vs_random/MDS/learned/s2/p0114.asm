.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
or dil, bl
cmovnb rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
test cl, 0
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
xor bl, al
xor rsi, -117
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
or dl, -89
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
