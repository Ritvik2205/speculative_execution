.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
xor rcx, 74
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovnz bx, cx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ecx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
bt edi, 134
or ecx, 9
or si, di
cmovz edi, esi
add cl, -93 # instrumentation
not rdi
dec al
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
