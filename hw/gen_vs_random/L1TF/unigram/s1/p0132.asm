.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
sbb al, 79
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 44
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
or esi, eax
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
sub al, 25
sub dl, cl
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 65
adc dl, cl
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
