.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 12
sub rbx, 81
add al, -122 # instrumentation
cmovnbe edx, edx
bts eax, esi
add cl, dil
test cl, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 49
add dl, -56 # instrumentation
cmovs rax, rdi
lea bx, qword ptr [rcx + rbx + 2]
add dl, 37 # instrumentation
cmovbe di, si
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
inc dil
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
