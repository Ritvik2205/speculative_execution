.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and bl, bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and dl, -73
test bl, dil
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
bt bx, ax
not bl
and eax, 366961170
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
test dil, cl
add dil, al
sub bl, 37
xor dl, 8
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
