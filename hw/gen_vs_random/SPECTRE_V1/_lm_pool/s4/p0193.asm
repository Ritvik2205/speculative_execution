.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
test cl, -120
lea cx, qword ptr [rax + rdx + 5]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
bts rsi, 63
mov dl, al
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 36
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
add sil, 2
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
