.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
sbb dl, dl
add bl, -108 # instrumentation
sbb dl, 77
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
add dl, 20 # instrumentation
cmovnbe rbx, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno esi, ecx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
cmovb bx, bx
add bl, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
