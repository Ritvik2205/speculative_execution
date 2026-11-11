.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
mov sil, al
setnb cl
lea ax, qword ptr [rax + rbx]
cmovnb edx, eax
imul cx
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, dil
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
lea dx, qword ptr [rax + rbx + 11]
add al, 13 # instrumentation
cmovno rax, rdx
or eax, -1641258390
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
test di, 43
cmovs rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
