.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor dil, bl
btr ax, bx
adc al, dil
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rcx + 82]
jmp .bb_0.2
.bb_0.2:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jmp .bb_0.3
.bb_0.3:
test al, cl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
test bl, 45
and cl, cl
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
sub si, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
