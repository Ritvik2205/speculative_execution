.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 55
and sil, bl
sub rbx, rax
add dl, 126 # instrumentation
setnb dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
adc ecx, 34
dec si
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 85
add esi, -17
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 26
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
