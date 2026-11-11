.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
add bl, -9 # instrumentation
adc rax, 1544006018
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
not bl
imul ecx, esi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
add dil, 12 # instrumentation
lea rsi, qword ptr [rax + rdi]
btr si, ax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx + 24]
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
