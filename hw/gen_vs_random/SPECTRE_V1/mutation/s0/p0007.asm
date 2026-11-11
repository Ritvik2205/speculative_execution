.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -108 # instrumentation
sbb dl, 77
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add dl, 20 # instrumentation
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
add cl, -36
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
setnz dil
inc dil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -86
mov rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
