.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, dl
btr ecx, esi
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
inc dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
add al, 109 # instrumentation
adc ax, 60
imul bx, di, -32
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rbx
and dl, -49
add al, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 11
test bl, 84
and cl, cl
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
