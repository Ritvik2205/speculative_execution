.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp cl
lea bx, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
imul bx, cx, 17
add esi, 11
xor sil, -33
sub dil, dl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
dec cl
add bl, 2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
sbb dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
