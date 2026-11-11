.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
or sil, -49
or bl, sil
xor dl, 8
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
xor di, -83
test al, bl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test cl, 0
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
or al, 25
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
test cl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
