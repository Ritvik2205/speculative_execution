.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
adc al, -90
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
sub ecx, 92
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
cmovno esi, esi
cmp eax, 912798305
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
lea cx, qword ptr [rbx + rdx + 34]
or al, -87
bts cx, 59
setle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
