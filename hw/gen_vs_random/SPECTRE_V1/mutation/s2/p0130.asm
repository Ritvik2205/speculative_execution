.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
adc ebx, eax
add ax, 23362
xor al, cl
and dl, -109
and cl, al
add dl, al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
btr rcx, 195
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb di, si
add al, 3
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
add al, -13
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
sub eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
