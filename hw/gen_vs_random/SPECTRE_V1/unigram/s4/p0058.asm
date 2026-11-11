.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
cmp sil, 24
cmovno edi, ebx
xchg edi, esi
mov al, dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
add al, 28 # instrumentation
setnz al
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 22
lea esi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
mov bl, al
xchg al, dl
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
