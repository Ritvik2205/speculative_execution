.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
or al, -24
or al, 25
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
xor bl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test rsi, rdi
or dil, al
and ax, 27170
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
or rsi, 97
test rsi, 50
and rdx, 70
xor al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
