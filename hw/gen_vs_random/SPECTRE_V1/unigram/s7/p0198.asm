.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rsi]
lea rdx, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
lea esi, qword ptr [rdx + rsi + 6]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
adc ax, si
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and ecx, ecx
add al, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf di, di
cmp dil, -58
xor edi, esi
lea cx, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
