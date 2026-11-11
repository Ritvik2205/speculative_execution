.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
add cl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 46
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovz rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
not dl
and esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
lea edi, qword ptr [rdx + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
add sil, -110 # instrumentation
btr si, 47
and rbx, -64
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
xor edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
