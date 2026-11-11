.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
setb bl
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
adc cl, -81
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
add al, -47
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
mov bl, dil
setnle dl
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
